part of 'admin_feedback_details_cubit.dart';

@freezed
class AdminFeedbackDetailsState with _$AdminFeedbackDetailsState {
  const factory AdminFeedbackDetailsState.initial() = _Initial;
  const factory AdminFeedbackDetailsState.success(
      AdminFeedbackDetailsResponse response, FeedbackStatus status) = _Success;

  const factory AdminFeedbackDetailsState.loading() = _Loading;
}
