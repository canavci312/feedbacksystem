import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/admin_feedback_details/view/admin_feedback_details_page.dart';
import 'package:feedbacksystem/admin_feedback_list/cubit/admin_feedback_list_cubit.dart';
import 'package:feedbacksystem/customer_feedback_details/view/customer_feedback_details_page.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:feedbacksystem/core/extensions.dart';
import '../../customer_add_feedback/view/customer_add_feedback_page.dart';

class AdminFeedbackListPage extends StatelessWidget {
  const AdminFeedbackListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdminFeedbackListCubit(getIt())..fetchFeedbacks(),
      child: const AdminFeedbackListView(),
    );
  }
}

class AdminFeedbackListView extends StatefulWidget {
  const AdminFeedbackListView({Key? key}) : super(key: key);

  @override
  State<AdminFeedbackListView> createState() => _AdminFeedbackListViewState();
}

class _AdminFeedbackListViewState extends State<AdminFeedbackListView> {
  TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeago.setLocaleMessages('tr', timeago.TrMessages());

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: GestureDetector(
            onTap: (() =>
                context.read<AdminFeedbackListCubit>().fetchFeedbacks()),
            child: const Icon(Icons.refresh)),
        middle: const Text('Geribildirimler'),
      ),
      child: Column(children: [
        const SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoSearchTextField(
            placeholder: 'Geribildirim Ara',
            controller: controller,
            onChanged: (String value) {
              context.read<AdminFeedbackListCubit>().searchFeedbacks(value);
            },
          ),
        ),
        BlocBuilder<AdminFeedbackListCubit, AdminFeedbackListState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const CircularProgressIndicator(),
              success: (list, filteredList) => controller.text.length > 2
                  ? Expanded(
                      child: Material(
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemCount: filteredList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return AdminFeedbackListListTile(
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
                          itemCount: list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return AdminFeedbackListListTile(list[index]);
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
}

class AdminFeedbackListListTile extends StatelessWidget {
  const AdminFeedbackListListTile(
    this.item, {
    Key? key,
  }) : super(key: key);
  final AdminFeedbackList item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.of(context).push(
            CupertinoPageRoute(
                builder: (context) => AdminFeedbackDetailsPage(item)),
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
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    item.isChecked!
                        ? const Icon(
                            CupertinoIcons.eye,
                            color: Colors.deepPurple,
                          )
                        : const Icon(
                            CupertinoIcons.eye_slash,
                            color: Colors.deepPurple,
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
                    const SizedBox(
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
