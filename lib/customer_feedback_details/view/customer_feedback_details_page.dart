import 'package:auth_repository/auth_repository.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/customer_feedback_details/cubit/customer_feedback_details_cubit.dart';
import 'package:feedbacksystem/customer_feedback_details/view/widget/custom_stepper.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reaction_repository/reaction_repository.dart';
import 'package:share_plus/share_plus.dart';

class CustomerFeedbackDetailsPage extends StatelessWidget {
  final PublicFeedbackList item;
  const CustomerFeedbackDetailsPage(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => CustomerFeedbackDetailsCubit(getIt<AuthRepository>(),
          getIt<FeedbackRepository>(), getIt<ReactionRepository>(), item.id!)
        ..fetchDetails(),
      child: const CustomerFeedbackDetailView(),
    );
  }
}

class CustomerFeedbackDetailView extends StatefulWidget {
  const CustomerFeedbackDetailView({Key? key}) : super(key: key);

  @override
  State<CustomerFeedbackDetailView> createState() =>
      _CustomerFeedbackDetailViewState();
}

class _CustomerFeedbackDetailViewState
    extends State<CustomerFeedbackDetailView> {
  TextEditingController _commentController = TextEditingController();
  TextEditingController _replyController = TextEditingController();
  bool isCommentAnonym = false;
  @override
  void dispose() {
    _commentController.dispose();
    _replyController.dispose();
    _refreshController.dispose();
    super.dispose();
  }

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    void _onRefresh() async {
      // monitor network fetch
      await context.read<CustomerFeedbackDetailsCubit>().fetchDetails();
      // if failed,use refreshFailed()
      _refreshController.refreshCompleted();
    }

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        middle: const Text('Detaylar'),
        trailing: GestureDetector(
            onTap: (() {
              Share.share(
                  'FMS de payla????lan bu geribildirimi g??rd??n m??? ????\nhttp://fms.uluoglakci.com/Feedback/GetDetail/${context.read<CustomerFeedbackDetailsCubit>().feedbackId}');
            }),
            child: const Icon(Icons.share)),
      ),
      child: BlocBuilder<CustomerFeedbackDetailsCubit,
          CustomerFeedbackDetailsState>(
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
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 70, right: 8, left: 8),
                      child: Center(
                        child: SmartRefresher(
                          controller: _refreshController,
                          enablePullDown: true,
                          enablePullUp: false,
                          onRefresh: _onRefresh,
                          child: SingleChildScrollView(
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
                                Row(
                                  children: [
                                    Text(
                                      details.data?.productName ?? '',
                                      overflow: TextOverflow.ellipsis,
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
                                  iLiked: details.data?.userReaction,
                                ),
                                const Text(
                                  'Firmadan Cevaplar:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                details.data?.replyList?.length == 0
                                    ? const Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Center(
                                          child: Text('Hen??z cevap yok'),
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
                                                return 'En az 10 karakter i??ermeli';
                                              }
                                            }),
                                            placeholder: 'Cevab??n??z',
                                            expands: true,
                                            maxLines: null,
                                            minLines: null,
                                            keyboardType:
                                                TextInputType.multiline,
                                            controller: _replyController,
                                            prefix: const Icon(
                                              CupertinoIcons.bubble_right,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      )
                                    : const SizedBox(),
                                details.data?.isMine ?? false
                                    ? Visibility(
                                        visible:
                                            details.data!.replyList!.isNotEmpty,
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: CupertinoButton(
                                            child: const Text('G??nder'),
                                            onPressed: () {
                                              context
                                                  .read<
                                                      CustomerFeedbackDetailsCubit>()
                                                  .sendReply(
                                                    _replyController.text,
                                                  );
                                              _replyController.clear();
                                            },
                                          ),
                                        ),
                                      )
                                    : const SizedBox(),
                                details.data!.isMine! &&
                                        !details.data!.isSolved!
                                    ? Center(
                                        child: CupertinoButton(
                                            child: const Text(
                                                '????z??ld?? olarak i??eretle'),
                                            onPressed: () =>
                                                showCupertinoDialog(
                                                    context: context,
                                                    builder: (context) =>
                                                        _solveConfirmDialog())),
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
                                          child: Text('Hen??z yorum yok'),
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
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: CupertinoTextField(
                                    placeholder: 'Yorumunuz',
                                    expands: true,
                                    maxLines: null,
                                    minLines: null,
                                    keyboardType: TextInputType.multiline,
                                    controller: _commentController,
                                    prefix: const Icon(
                                      CupertinoIcons.bubble_right,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('Anonim'),
                                    CupertinoSwitch(
                                      activeColor:
                                          Theme.of(context).primaryColor,
                                      value: isCommentAnonym,
                                      onChanged: (bool value) {
                                        setState(() {
                                          isCommentAnonym = value;
                                        });
                                      },
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: CupertinoButton(
                                        child: const Text('G??nder'),
                                        onPressed: () {
                                          context
                                              .read<
                                                  CustomerFeedbackDetailsCubit>()
                                              .sendComment(
                                                  _commentController.text,
                                                  isCommentAnonym);
                                          _commentController.clear();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                )
                              ],
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

  CupertinoAlertDialog _solveConfirmDialog() {
    return CupertinoAlertDialog(
      title: const Text('Sorununuz ????z??ld?? m???'),
      content:
          const Text('Onaylarsan??z sorununuz ????z??ld?? olarak i??aretlenecektir'),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          child: const Text('??ptal'),
          isDestructiveAction: true,
        ),
        CupertinoDialogAction(
          child: const Text('Onayla'),
          onPressed: () {
            context.read<CustomerFeedbackDetailsCubit>().toggleSolved();
            Navigator.of(context, rootNavigator: true).pop();
          },
          isDestructiveAction: false,
        )
      ],
    );
  }
}

class FeedbackMessage extends StatelessWidget {
  final String senderName;
  final String text;
  final DateTime date;
  final int? likeCount;
  final bool? iLiked;
  const FeedbackMessage(this.senderName, this.text, this.date,
      {this.likeCount, this.iLiked, Key? key})
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
                      GestureDetector(
                        onTap: () {
                          context
                              .read<CustomerFeedbackDetailsCubit>()
                              .sendReaction(iLiked == null ? false : true);
                        },
                        child: iLiked == null
                            ? Icon(
                                Icons.thumb_up,
                                color: Colors.grey,
                              )
                            : Icon(
                                Icons.thumb_up,
                                color: Theme.of(context).primaryColor,
                              ),
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
