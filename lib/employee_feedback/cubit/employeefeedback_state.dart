part of 'employeefeedback_cubit.dart';

@freezed
class EmployeeFeedbackState with _$EmployeeFeedbackState {
  const factory EmployeeFeedbackState.initial() = _Initial;
  const factory EmployeeFeedbackState.loading() = _Loading;
  const factory EmployeeFeedbackState.success(List<CompanyFeedbackList> list,
      List<CompanyFeedbackList> filteredList) = _Success;
}
