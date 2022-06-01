import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/customer_feedback_details/view/customer_feedback_details_page.dart';
import 'package:feedbacksystem/customer_feedbacks/bloc/customer_feedbacks_bloc.dart';
import 'package:feedbacksystem/customer_filter_feedbacks/model/feedback_filter_model.dart';
import 'package:feedbacksystem/customer_filter_feedbacks/view/customer_filter_feedbacks.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:feedbacksystem/core/extensions.dart';
import '../../customer_add_feedback/view/customer_add_feedback_page.dart';

class CustomerFeedbackPage extends StatefulWidget {
  const CustomerFeedbackPage({Key? key}) : super(key: key);

  @override
  State<CustomerFeedbackPage> createState() => _CustomerFeedbackPageState();
}

class _CustomerFeedbackPageState extends State<CustomerFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CustomerFeedbacksBloc(getIt())
        ..add(CustomerFeedbacksEvent.fetchFeedbacks()),
      child: const CustomerFeedbackView(),
    );
  }
}

class CustomerFeedbackView extends StatefulWidget {
  const CustomerFeedbackView({Key? key}) : super(key: key);

  @override
  State<CustomerFeedbackView> createState() => _CustomerFeedbackViewState();
}

class _CustomerFeedbackViewState extends State<CustomerFeedbackView> {
  TextEditingController controller = TextEditingController();
  final _scrollController = ScrollController();
  FeedbackFilterModel? model;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    timeago.setLocaleMessages('tr', timeago.TrMessages());
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: GestureDetector(
            onTap: () => Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => CustomerAddFeedbackPage(),
                )),
            child: Icon(Icons.add)),
        middle: Text('Geribildirimler'),
      ),
      child: Column(children: [
        SizedBox(
          height: 70,
        ),
        SizedBox(
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoSearchTextField(
                    placeholder: 'Geribildirim Ara',
                    controller: controller,
                    onChanged: (String value) {
                      context
                          .read<CustomerFeedbacksBloc>()
                          .add(CustomerFeedbacksEvent.searchFeedbacks(value));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(
                    onTap: () async {
                      model = await showCupertinoDialog<FeedbackFilterModel?>(
                          barrierDismissible: true,
                          context: context,
                          builder: (BuildContext context) =>
                              CustomerFilterFeedbacksDialog());
                      context
                          .read<CustomerFeedbacksBloc>()
                          .add(CustomerFeedbacksEvent.applyFilter(model));
                    },
                    child: Icon(Icons.filter_alt)),
              )
            ],
          ),
        ),
        BlocBuilder<CustomerFeedbacksBloc, CustomerFeedbacksState>(
          builder: (context, state) {
            return state.when(
              initial: () => Center(child: const CircularProgressIndicator()),
              loading: () => const CircularProgressIndicator(),
              success: (list, filteredList, hasReachedMax) => filteredList
                          .length >
                      0
                  ? Expanded(
                      child: Material(
                        child: ListView.separated(
                          controller: _scrollController,
                          itemCount: filteredList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CustomerFeedbackListTile(
                                filteredList[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider(
                              color: Colors.grey,
                            );
                          },
                        ),
                      ),
                    )
                  : Expanded(
                      child: Material(
                        child: ListView.separated(
                          controller: _scrollController,
                          itemCount: list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CustomerFeedbackListTile(list[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider(
                              color: Colors.grey,
                            );
                          },
                        ),
                      ),
                    ),
            );
          },
        )
      ]),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom)
      context.read<CustomerFeedbacksBloc>().state.whenOrNull(
        success: (list, filteredList, hasReachedMax) {
          filteredList.isNotEmpty
              ? null
              : context
                  .read<CustomerFeedbacksBloc>()
                  .add(CustomerFeedbacksEvent.fetchFeedbacks());
        },
      );
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class CustomerFeedbackListTile extends StatelessWidget {
  const CustomerFeedbackListTile(
    this.item, {
    Key? key,
  }) : super(key: key);
  final PublicFeedbackList item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.of(context).push(
            CupertinoPageRoute(
                builder: (context) => CustomerFeedbackDetailsPage(item)),
          )),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      item.customerFirstName ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      CupertinoIcons.arrow_turn_down_right,
                      color: Colors.blueGrey,
                    ),
                    Text(
                      item.companyName ?? '',
                      style: const TextStyle(color: Colors.deepPurple),
                    ),
                    Visibility(
                      visible: item.isSolved ?? false,
                      child: const Icon(
                        CupertinoIcons.checkmark_alt_circle,
                        color: Colors.deepPurple,
                      ),
                    )
                  ],
                ),
                Text(
                  item.title ?? '',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(item.typeName.xToTurkish() ?? ''),
                    SizedBox(
                      width: 5,
                    ),
                    Text(timeago.format(DateTime.parse(item.createdAt!),
                        locale: 'tr'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
