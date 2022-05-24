// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeReportResponse _$$_EmployeeReportResponseFromJson(
        Map<String, dynamic> json) =>
    _$_EmployeeReportResponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EmployeeReportResponseToJson(
        _$_EmployeeReportResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
