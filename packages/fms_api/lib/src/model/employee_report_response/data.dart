import 'package:freezed_annotation/freezed_annotation.dart';

import 'employee_report.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    List<EmployeeReport>? employeeReports,
    int? count,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
