part of 'employee_report_cubit.dart';

@freezed
class EmployeeReportState with _$EmployeeReportState {
  const factory EmployeeReportState.initial() = _Initial;
    const factory EmployeeReportState.loading() = _Loading;

  const factory EmployeeReportState.success(EmployeeReportResponse response) = _Success;

}
