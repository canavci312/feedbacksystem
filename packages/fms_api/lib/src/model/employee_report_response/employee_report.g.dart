// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeReport _$$_EmployeeReportFromJson(Map<String, dynamic> json) =>
    _$_EmployeeReport(
      employeeId: json['employeeId'] as int?,
      employeeName: json['employeeName'] as String?,
      totalDirectedFeedbackCount: json['totalDirectedFeedbackCount'] as int?,
      repliedFeedbackCount: json['repliedFeedbackCount'] as int?,
      solvedFeedbackCount: json['solvedFeedbackCount'] as int?,
      archivedFeedbackCount: json['archivedFeedbackCount'] as int?,
    );

Map<String, dynamic> _$$_EmployeeReportToJson(_$_EmployeeReport instance) =>
    <String, dynamic>{
      'employeeId': instance.employeeId,
      'employeeName': instance.employeeName,
      'totalDirectedFeedbackCount': instance.totalDirectedFeedbackCount,
      'repliedFeedbackCount': instance.repliedFeedbackCount,
      'solvedFeedbackCount': instance.solvedFeedbackCount,
      'archivedFeedbackCount': instance.archivedFeedbackCount,
    };
