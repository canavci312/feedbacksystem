import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reaction_repository/reaction_repository.dart';

part 'guest_feedback_details_state.dart';
part 'guest_feedback_details_cubit.freezed.dart';

enum FeedbackStatus { available, answered, solved }

class GuestFeedbackDetailsCubit extends Cubit<GuestFeedbackDetailsState> {
  final FeedbackRepository _feedbackRepository;

  final int feedbackId;
  GuestFeedbackDetailsCubit(this._feedbackRepository, this.feedbackId)
      : super(GuestFeedbackDetailsState.initial());
  fetchDetails() async {
    emit(GuestFeedbackDetailsState.loading());
    final response = await _feedbackRepository.getFeedbackDetail(feedbackId);

    if (response != null) {
      emit(GuestFeedbackDetailsState.success(response, getStatus(response)));
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
}
