part of 'guest_feedback_details_cubit.dart';

@freezed
class GuestFeedbackDetailsState with _$GuestFeedbackDetailsState {
  const factory GuestFeedbackDetailsState.initial() = _Initial;
  const factory GuestFeedbackDetailsState.loading() = _Loading;

  const factory GuestFeedbackDetailsState.success(
      FeedbackDetailResponse feedbackDetail, FeedbackStatus status) = _Success;
}
