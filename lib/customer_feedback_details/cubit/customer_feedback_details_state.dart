part of 'customer_feedback_details_cubit.dart';

@freezed
class CustomerFeedbackDetailsState with _$CustomerFeedbackDetailsState {
  const factory CustomerFeedbackDetailsState.initial() = _Initial;
  const factory CustomerFeedbackDetailsState.loading() = _Loading;

  const factory CustomerFeedbackDetailsState.success(
      FeedbackDetailResponse feedbackDetail, FeedbackStatus status) = _Success;
}
