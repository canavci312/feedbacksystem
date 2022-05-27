import 'package:feedbacksystem/admin_feedback_details/cubit/admin_feedback_details_cubit.dart';
import 'package:feedbacksystem/customer_feedback_details/view/widget/custom_stepper.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class AdminFeedbackDetailsPage extends StatelessWidget {
  const AdminFeedbackDetailsPage(this.item, {Key? key}) : super(key: key);
  final AdminFeedbackList item;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AdminFeedbackDetailsCubit(getIt(), item.id!)..fetchDetails(),
      child: AdminFeedbackDetailsView(),
    );
  }
}

class AdminFeedbackDetailsView extends StatefulWidget {
  const AdminFeedbackDetailsView({Key? key}) : super(key: key);

  @override
  State<AdminFeedbackDetailsView> createState() =>
      _AdminFeedbackDetailsViewState();
}

class _AdminFeedbackDetailsViewState extends State<AdminFeedbackDetailsView> {
  TextEditingController _replyController = TextEditingController();
  @override
  void dispose() {
    _replyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AdminFeedbackDetailsCubit>();
    return BlocBuilder<AdminFeedbackDetailsCubit, AdminFeedbackDetailsState>(
      builder: (context, state) {
        return state.when(
            initial: () => const SizedBox(),
            loading: () => Center(child: const CircularProgressIndicator()),
            success: (details, status) => GestureDetector(
                  onTap: (() {
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus &&
                        currentFocus.focusedChild != null) {
                      currentFocus.focusedChild?.unfocus();
                    }
                  }),
                  child: CupertinoPageScaffold(
                    navigationBar: CupertinoNavigationBar(
                      leading: CupertinoNavigationBarBackButton(
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      middle: const Text('Detaylar'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          cubit.state.maybeWhen(
                              success: (response, status) => Material(
                                    child: IconButton(
                                      icon: response.data!.isChecked!
                                          ? Icon(
                                              CupertinoIcons.eye_slash,
                                            )
                                          : Icon(
                                              CupertinoIcons.eye,
                                            ),
                                      onPressed: () {
                                        cubit.toggleIsChecked();
                                      },
                                    ),
                                  ),
                              orElse: () => SizedBox()),
                          GestureDetector(
                              onTap: (() {
                                showCupertinoModalPopup(
                                    context: context,
                                    builder: (context) => CupertinoActionSheet(
                                          title: const Text('Müşteriye ulaşın'),
                                          actions: [
                                            CupertinoActionSheetAction(
                                              onPressed: () async {
                                                var reponse = await launchUrl(
                                                    Uri(
                                                        scheme: 'tel',
                                                        path: cubit.state
                                                            .whenOrNull(
                                                          success: (feedbackDetail,
                                                                  status) =>
                                                              feedbackDetail
                                                                  .data!
                                                                  .customerPhone!,
                                                        )));
                                              },
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                      CupertinoIcons.phone),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(cubit.state.whenOrNull(
                                                        success: (feedbackDetail,
                                                                status) =>
                                                            feedbackDetail.data!
                                                                .customerPhone!,
                                                      ) ??
                                                      '')
                                                ],
                                              ),
                                            ),
                                            CupertinoActionSheetAction(
                                              onPressed: () async {
                                                var reponse = await launchUrl(
                                                    Uri(
                                                        scheme: 'mailto',
                                                        path: cubit.state
                                                            .whenOrNull(
                                                          success: (feedbackDetail,
                                                                  status) =>
                                                              feedbackDetail
                                                                  .data!
                                                                  .customerEmail!,
                                                        )));
                                                print(reponse);
                                              },
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                      CupertinoIcons.mail),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(cubit.state.whenOrNull(
                                                        success: (feedbackDetail,
                                                                status) =>
                                                            feedbackDetail.data!
                                                                .customerEmail!,
                                                      ) ??
                                                      '')
                                                ],
                                              ),
                                            )
                                          ],
                                        ));
                              }),
                              child: const Icon(CupertinoIcons.phone)),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 50 + MediaQuery.of(context).viewPadding.top,
                          right: 8,
                          left: 8),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(details.data?.title ?? '',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                                Row(
                                  children: [
                                    Text(
                                      details.data?.productName ?? '',
                                      style: const TextStyle(
                                          fontStyle: FontStyle.italic),
                                    ),
                                    const Text(
                                      ' - ',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      details.data?.companyName ?? '',
                                      style: const TextStyle(
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    width: double.infinity,
                                    child: CustomStepper(status)),
                                FeedbackMessage(
                                  details.data?.customerFirstName ?? '',
                                  details.data?.text ?? '',
                                  details.data?.createdAt ?? DateTime.now(),
                                  likeCount: details.data?.likeCount,
                                ),
                                const Text(
                                  'Firmadan Cevaplar:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                details.data?.replyList?.length == 0
                                    ? const Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Center(
                                          child: Text('Henüz cevap yok'),
                                        ),
                                      )
                                    : ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
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
                                              DateTime.parse(details
                                                  .data!
                                                  .replyList![index]
                                                  .createdAt!));
                                        },
                                      ),
                                const Text(
                                  'Yorumlar:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                details.data?.commentList?.length == 0
                                    ? const Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Center(
                                          child: Text('Henüz yorum yok'),
                                        ),
                                      )
                                    : ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
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
                    ),
                  ),
                ));
      },
    );
  }
}

class FeedbackMessage extends StatelessWidget {
  final String senderName;
  final String text;
  final DateTime date;
  final int? likeCount;
  const FeedbackMessage(this.senderName, this.text, this.date,
      {this.likeCount, Key? key})
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
          likeCount != null
              ? Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(likeCount.toString()),
                      const Icon(
                        Icons.thumb_up,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        DateFormat.yMMMEd('tr')

                            // displaying formatted date
                            .format(date.toLocal()),
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ))
              : Align(
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
