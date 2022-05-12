import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/customer_feedback_details/cubit/customer_feedback_details_cubit.dart';
import 'package:feedbacksystem/customer_feedback_details/view/widget/custom_stepper.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:intl/intl.dart';

class CustomerFeedbackDetailsPage extends StatelessWidget {
  final PublicFeedbackList item;
  const CustomerFeedbackDetailsPage(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CustomerFeedbackDetailsCubit(getIt<FeedbackRepository>())
            ..fetchDetails(item.id!),
      child: const CustomerFeedbackDetailView(),
    );
  }
}

class CustomerFeedbackDetailView extends StatelessWidget {
  const CustomerFeedbackDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        middle: const Text('Detaylar'),
      ),
      child: BlocBuilder<CustomerFeedbackDetailsCubit,
          CustomerFeedbackDetailsState>(
        builder: (context, state) {
          return state.when(
              initial: () => const SizedBox(),
              loading: () => const CircularProgressIndicator(),
              success: (details, status) => Padding(
                    padding: const EdgeInsets.only(top: 70, right: 8, left: 8),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(details.data?.title ?? '',
                                  style:
                                      const TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                  width: double.infinity,
                                  child: CustomStepper(status)),
                              FeedbackMessage(
                                  details.data?.customerFirstName ?? '',
                                  details.data?.text ?? '',
                                  details.data?.createdAt ?? DateTime.now()),
                              const Text(
                                'Firmadan Cevaplar:',
                                style:  TextStyle(fontWeight: FontWeight.bold),
                              ),
                              details.data?.replyList?.length == 0
                                  ? const Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Center(
                                        child:  Text('Henüz cevap yok'),
                                      ),
                                    )
                                  : ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount:
                                          details.data?.replyList?.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return FeedbackMessage(
                                            details.data?.replyList?[index]
                                                    .userName ??
                                                '',
                                            details.data?.replyList?[index]
                                                    .text ??
                                                '',
                                            details.data?.replyList?[index]
                                                    .createdAt ??
                                                DateTime.now());
                                      },
                                    ),
                              const Text(
                                'Yorumlar:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              details.data?.commentList?.length == 0
                                  ? const Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child:  Center(
                                        child:  Text('Henüz yorum yok'),
                                      ),
                                    )
                                  : ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount:
                                          details.data?.commentList?.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return FeedbackMessage(
                                            details.data?.commentList?[index]
                                                    .userName ??
                                                '',
                                            details.data?.commentList?[index]
                                                    .text ??
                                                '',
                                            details.data?.commentList?[index]
                                                    .createdAt ??
                                                DateTime.now());
                                      },
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ));
        },
      ),
    );
  }
}

class FeedbackMessage extends StatelessWidget {
  final String senderName;
  final String text;
  final DateTime date;
  const FeedbackMessage(this.senderName, this.text, this.date, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            senderName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Text(
                DateFormat.yMMMEd('tr')

                    // displaying formatted date
                    .format(date.toLocal()),
                style: const TextStyle(fontStyle: FontStyle.italic),
              ))
        ],
      )),
    );
  }
}
