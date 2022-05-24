// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_statistics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerStatisticsResponse _$$_CustomerStatisticsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerStatisticsResponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CustomerStatisticsResponseToJson(
        _$_CustomerStatisticsResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
