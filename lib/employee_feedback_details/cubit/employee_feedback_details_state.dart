part of 'employee_feedback_details_cubit.dart';

@freezed
class EmployeeFeedbackDetailsState with _$EmployeeFeedbackDetailsState {
  const factory EmployeeFeedbackDetailsState.initial() = _Initial;
  const factory EmployeeFeedbackDetailsState.loading() = _Loading;

  const factory EmployeeFeedbackDetailsState.success(
      CompanyFeedbackDetailsResponse feedbackDetail,
      FeedbackStatus status) = _Success;
}
