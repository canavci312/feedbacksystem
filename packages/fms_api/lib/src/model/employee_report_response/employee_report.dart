import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_report.freezed.dart';
part 'employee_report.g.dart';

@freezed
class EmployeeReport with _$EmployeeReport {
  factory EmployeeReport({
    int? employeeId,
    String? employeeName,
    int? totalDirectedFeedbackCount,
    int? repliedFeedbackCount,
    int? solvedFeedbackCount,
    int? archivedFeedbackCount,
  }) = _EmployeeReport;

  factory EmployeeReport.fromJson(Map<String, dynamic> json) =>
      _$EmployeeReportFromJson(json);
}
