// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      totalFeedbackCount: json['totalFeedbackCount'] as int?,
      userCountPostedFeedback: json['userCountPostedFeedback'] as int?,
      customerStatistics: json['customerStatistics'] == null
          ? null
          : CustomerStatistics.fromJson(
              json['customerStatistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'totalFeedbackCount': instance.totalFeedbackCount,
      'userCountPostedFeedback': instance.userCountPostedFeedback,
      'customerStatistics': instance.customerStatistics,
    };
