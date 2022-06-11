import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reaction_repository/reaction_repository.dart';

part 'customer_feedback_details_state.dart';
part 'customer_feedback_details_cubit.freezed.dart';

enum FeedbackStatus { available, answered, solved }

class CustomerFeedbackDetailsCubit extends Cubit<CustomerFeedbackDetailsState> {
  final FeedbackRepository _feedbackRepository;
  final ReactionRepository _reactionRepository;
  final AuthRepository _authRepository;
  final int feedbackId;
  CustomerFeedbackDetailsCubit(this._authRepository, this._feedbackRepository,
      this._reactionRepository, this.feedbackId)
      : super(CustomerFeedbackDetailsState.initial());
  fetchDetails() async {
    emit(CustomerFeedbackDetailsState.loading());
    final response = await _feedbackRepository.getFeedbackDetail(feedbackId);

    if (response != null) {
      emit(CustomerFeedbackDetailsState.success(response, getStatus(response)));
    }
  }

  FeedbackStatus getStatus(FeedbackDetailResponse response) {
    if (response.data!.isSolved!) {
      return FeedbackStatus.solved;
    } else if (response.data!.isReplied!) {
      return FeedbackStatus.answered;
    } else {
      return FeedbackStatus.available;
    }
  }

  void sendComment(String text, bool isAnonym) async {
    emit(CustomerFeedbackDetailsState.loading());
    final response =
        await _feedbackRepository.sendComment(feedbackId, text, isAnonym);
    fetchDetails();
  }

  void sendReaction(bool isDelete) async {
    emit(CustomerFeedbackDetailsState.loading());
    if (isDelete) {
      await _reactionRepository.deleteFeedbackReaction(feedbackId);
    } else {
      await _reactionRepository.reactToFeedback(feedbackId);
    }
    await Future.delayed(Duration(milliseconds: 200));

    await fetchDetails();
  }

  void toggleSolved() async {
    emit(CustomerFeedbackDetailsState.loading());
    final response = await _feedbackRepository.toggleSolved(feedbackId);
    await fetchDetails();
  }

  void sendReply(String text) async {
    emit(CustomerFeedbackDetailsState.loading());
    var curUser = await _authRepository.currentUser();

    final response = await _feedbackRepository.upsertReply(
        int.parse(curUser!.id!), feedbackId, text);
    await fetchDetails();
  }
}
