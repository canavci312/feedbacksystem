import 'package:auth_repository/auth_repository.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/guest_feedback_details/cubit/guest_feedback_details_cubit.dart';
import 'package:feedbacksystem/guest_feedback_details/view/widget/custom_stepper.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:intl/intl.dart';
import 'package:reaction_repository/reaction_repository.dart';
import 'package:share_plus/share_plus.dart';

class GuestFeedbackDetailsPage extends StatelessWidget {
  final PublicFeedbackList item;
  const GuestFeedbackDetailsPage(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) =>
          GuestFeedbackDetailsCubit(getIt<FeedbackRepository>(), item.id!)
            ..fetchDetails(),
      child: const GuestFeedbackDetailView(),
    );
  }
}

class GuestFeedbackDetailView extends StatefulWidget {
  const GuestFeedbackDetailView({Key? key}) : super(key: key);

  @override
  State<GuestFeedbackDetailView> createState() =>
      _GuestFeedbackDetailViewState();
}

class _GuestFeedbackDetailViewState extends State<GuestFeedbackDetailView> {
  TextEditingController _commentController = TextEditingController();
  TextEditingController _replyController = TextEditingController();
  @override
  void dispose() {
    _commentController.dispose();
    _replyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        middle: const Text('Detaylar'),
        trailing: GestureDetector(
            onTap: () => Share.share(
                'FMS de paylaşılan bu geribildirimi gördün mü? 😲\nhttp://fms.uluoglakci.com/Feedback/GetDetail/${context.read<GuestFeedbackDetailsCubit>().feedbackId}'),
            child: const Icon(Icons.share)),
      ),
      child: BlocBuilder<GuestFeedbackDetailsCubit, GuestFeedbackDetailsState>(
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
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 70, right: 8, left: 8),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(details.data?.title ?? '',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  details.data?.typeId == 1
                                      ? const Icon(
                                          CupertinoIcons.heart_slash_fill,
                                          color: Colors.red,
                                        )
                                      : details.data?.typeId == 2
                                          ? const Icon(
                                              CupertinoIcons.smiley,
                                              color: Colors.green,
                                            )
                                          : Icon(
                                              CupertinoIcons.light_max,
                                              color: Colors.yellow[900],
                                            )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    details.data?.productName ?? '',
                                    style: const TextStyle(
                                        fontStyle: FontStyle.italic),
                                  ),
                                  const Text(
                                    ' - ',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
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
                                            details.data?.replyList?[index]
                                                    .createdAt ??
                                                DateTime.now());
                                      },
                                    ),
                              details.data?.isMine ?? false
                                  ? Visibility(
                                      visible:
                                          details.data!.replyList!.isNotEmpty,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: CupertinoTextFormFieldRow(
                                          validator: ((value) {
                                            if (value == null ||
                                                value.length < 10) {
                                              return 'En az 10 karakter içermeli';
                                            }
                                          }),
                                          placeholder: 'Cevabınız',
                                          expands: true,
                                          maxLines: null,
                                          minLines: null,
                                          keyboardType: TextInputType.multiline,
                                          controller: _replyController,
                                          prefix: const Icon(
                                            CupertinoIcons.bubble_right,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    )
                                  : const SizedBox(),
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
                              const SizedBox(
                                height: 50,
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
