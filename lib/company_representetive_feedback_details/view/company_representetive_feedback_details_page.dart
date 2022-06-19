import 'package:auth_repository/auth_repository.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/company_representetive_feedback_details/cubit/company_representative_feedback_details_cubit.dart';
import 'package:feedbacksystem/customer_feedback_details/view/widget/custom_stepper.dart';
import 'package:feedbacksystem/direct_feedback/view/direct_feedback_dialog.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher.dart';

class CompanyRepresentativeFeedbackDetailsPage extends StatelessWidget {
  final CompanyFeedbackList item;
  const CompanyRepresentativeFeedbackDetailsPage(this.item, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CompanyRepresentativeFeedbackDetailsCubit(
          getIt<AuthRepository>(), getIt<FeedbackRepository>(), item.id!)
        ..fetchDetails(),
      child: const EmployeeFeedbackDetailView(),
    );
  }
}

class EmployeeFeedbackDetailView extends StatefulWidget {
  const EmployeeFeedbackDetailView({Key? key}) : super(key: key);

  @override
  State<EmployeeFeedbackDetailView> createState() =>
      _EmployeeFeedbackDetailViewState();
}

class _EmployeeFeedbackDetailViewState
    extends State<EmployeeFeedbackDetailView> {
  TextEditingController _replyController = TextEditingController();
  @override
  void dispose() {
    _replyController.dispose();
    _refreshController.dispose();

    super.dispose();
  }

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CompanyRepresentativeFeedbackDetailsCubit>();
    void _onRefresh() {
      cubit.fetchDetails();
    }

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        middle: const Text('Detaylar'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
                onTap: (() async {
                  showCupertinoDialog<void>(
                          barrierDismissible: true,
                          context: context,
                          builder: (BuildContext context) =>
                              DirectFeedbackDialogPage(cubit.feedbackId))
                      .then((value) async {
                    Future.delayed(Duration(milliseconds: 300));
                    return cubit.fetchDetails();
                  });
                }),
                child: Icon(Icons.forward_outlined)),
            GestureDetector(
                onTap: (() {
                  showCupertinoModalPopup(
                      context: context,
                      builder: (context) => CupertinoActionSheet(
                            title: const Text('Müşteriye ulaşın'),
                            actions: [
                              CupertinoActionSheetAction(
                                onPressed: () async {
                                  var reponse = await launchUrl(Uri(
                                      scheme: 'tel',
                                      path: cubit.state.whenOrNull(
                                        success: (feedbackDetail, status) =>
                                            feedbackDetail.data!.customerPhone!,
                                      )));
                                  print(reponse);
                                },
                                child: Row(
                                  children: [
                                    const Icon(CupertinoIcons.phone),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(cubit.state.whenOrNull(
                                          success: (feedbackDetail, status) =>
                                              feedbackDetail
                                                  .data!.customerPhone!,
                                        ) ??
                                        '')
                                  ],
                                ),
                              ),
                              CupertinoActionSheetAction(
                                onPressed: () async {
                                  var reponse = await launchUrl(Uri(
                                      scheme: 'mailto',
                                      path: cubit.state.whenOrNull(
                                        success: (feedbackDetail, status) =>
                                            feedbackDetail.data!.customerEmail!,
                                      )));
                                  print(reponse);
                                },
                                child: Row(
                                  children: [
                                    const Icon(CupertinoIcons.mail),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(cubit.state.whenOrNull(
                                          success: (feedbackDetail, status) =>
                                              feedbackDetail
                                                  .data!.customerEmail!,
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
      child: BlocBuilder<CompanyRepresentativeFeedbackDetailsCubit,
          CompanyRepresentativeFeedbackDetailsState>(
        builder: (context, state) {
          return state.when(
              initial: () => const SizedBox(),
              loading: () => const CircularProgressIndicator(),
              success: (details, status) => GestureDetector(
                    onTap: (() {
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus &&
                          currentFocus.focusedChild != null) {
                        currentFocus.focusedChild?.unfocus();
                      }
                    }),
                    child: SmartRefresher(
                      enablePullDown: true,
                      controller: _refreshController,
                      onRefresh: _onRefresh,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 50 + MediaQuery.of(context).viewPadding.top,
                              right: 8,
                              left: 8),
                          child: Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(details.data?.title ?? '',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      details.data?.typeId == 1
                                          ? Icon(
                                              CupertinoIcons.heart_slash_fill,
                                              color: Colors.red,
                                            )
                                          : details.data?.typeId == 2
                                              ? Icon(
                                                  CupertinoIcons.smiley,
                                                  color: Colors.green,
                                                )
                                              : Icon(
                                                  CupertinoIcons.light_max,
                                                  color: Colors.yellow[900],
                                                )
                                    ],
                                  ),
                                  Text(
                                      'Yönlendilen kişi: ${details.data?.directedToEmployeeName ?? '-'}'),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                          itemBuilder: (BuildContext context,
                                              int index) {
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return FeedbackMessage(
                                                details
                                                        .data
                                                        ?.commentList?[index]
                                                        .userName ??
                                                    '',
                                                details
                                                        .data
                                                        ?.commentList?[index]
                                                        .text ??
                                                    '',
                                                details
                                                        .data
                                                        ?.commentList?[index]
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
      ),
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
