import 'package:auth_repository/auth_repository.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/customer_add_feedback/view/customer_add_feedback_page.dart';
import 'package:feedbacksystem/customer_feedback_details/view/customer_feedback_details_page.dart';
import 'package:feedbacksystem/customer_feedback_track/cubit/customerfeedbacktrack_cubit.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:feedbacksystem/core/extensions.dart';

class CustomerFeedbackTrackPage extends StatelessWidget {
  const CustomerFeedbackTrackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CustomerFeedbackTrackCubit(
          getIt<FeedbackRepository>(), getIt<AuthRepository>())
        ..fetchUserFeedbacks(),
      child: CustomerFeedbackTrackView(),
    );
  }
}

class CustomerFeedbackTrackView extends StatelessWidget {
  const CustomerFeedbackTrackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    timeago.setLocaleMessages('tr', timeago.TrMessages());

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Geribildirimlerim',
        ),
        trailing: GestureDetector(
            onTap: (() => Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => CustomerAddFeedbackPage(),
                ))),
            child: Icon(Icons.add)),
      ),
      child:
          BlocBuilder<CustomerFeedbackTrackCubit, CustomerFeedbackTrackState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const CircularProgressIndicator(),
            success: (list) => Material(
              child: list.length == 0
                  ? Center(
                      child: Text('Henüz geribildirim paylaşmadınız'),
                    )
                  : ListView.separated(
                      itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CustomerFeedbackTrackingListTile(list[index]);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(
                          color: Colors.grey,
                        );
                      },
                    ),
            ),
          );
        },
      ),
    );
  }
}

class CustomerFeedbackTrackingListTile extends StatelessWidget {
  const CustomerFeedbackTrackingListTile(
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
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      item.companyName ?? '',
                      style: const TextStyle(color: Colors.deepPurple),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Visibility(
                      visible: item.isReplied ?? false,
                      child: const Icon(
                        CupertinoIcons.reply,
                        color: Colors.deepPurple,
                      ),
                    ),
                    Visibility(
                      visible: item.isSolved ?? false,
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.checkmark_alt_circle,
                            color: Colors.deepPurple,
                          ),
                        ],
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
