import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'meta.dart';

part 'employee_report_response.freezed.dart';
part 'employee_report_response.g.dart';

@freezed
class EmployeeReportResponse with _$EmployeeReportResponse {
  factory EmployeeReportResponse({
    Meta? meta,
    Data? data,
  }) = _EmployeeReportResponse;

  factory EmployeeReportResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeeReportResponseFromJson(json);
}
