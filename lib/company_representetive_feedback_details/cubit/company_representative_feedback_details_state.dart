part of 'company_representative_feedback_details_cubit.dart';

@freezed
class CompanyRepresentativeFeedbackDetailsState
    with _$CompanyRepresentativeFeedbackDetailsState {
  const factory CompanyRepresentativeFeedbackDetailsState.initial() = _Initial;
  const factory CompanyRepresentativeFeedbackDetailsState.loading() = _Loading;

  const factory CompanyRepresentativeFeedbackDetailsState.success(
      CompanyFeedbackDetailsResponse feedbackDetail,
      FeedbackStatus status) = _Success;
}
