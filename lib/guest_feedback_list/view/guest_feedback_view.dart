import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/guest_feedback_details/view/guest_feedback_details_page.dart';

import 'package:feedbacksystem/guest_feedback_list/cubit/guest_feedbacks_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:feedbacksystem/core/extensions.dart';

class GuestFeedbackPage extends StatelessWidget {
  const GuestFeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GuestFeedbacksCubit(FeedbackRepository(FmsApi()))..fetchFeedbacks(),
      child: const GuestFeedbackView(),
    );
  }
}

class GuestFeedbackView extends StatefulWidget {
  const GuestFeedbackView({Key? key}) : super(key: key);

  @override
  State<GuestFeedbackView> createState() => _GuestFeedbackViewState();
}

class _GuestFeedbackViewState extends State<GuestFeedbackView> {
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
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Geribildirimler'),
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
              context.read<GuestFeedbacksCubit>().searchFeedbacks(value);
            },
          ),
        ),
        BlocBuilder<GuestFeedbacksCubit, GuestFeedbacksState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const CircularProgressIndicator(),
              success: (list, filteredList) => controller.text.length > 2
                  ? Expanded(
                      child: Material(
                        child: ListView.separated(
                          itemCount: filteredList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GuestFeedbackListTile(filteredList[index]);
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
                            return GuestFeedbackListTile(list[index]);
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

class GuestFeedbackListTile extends StatelessWidget {
  const GuestFeedbackListTile(
    this.item, {
    Key? key,
  }) : super(key: key);
  final PublicFeedbackList item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.of(context).push(
            CupertinoPageRoute(
                builder: (context) => GuestFeedbackDetailsPage(item)),
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
