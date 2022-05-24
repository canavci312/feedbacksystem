// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_counts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackCountsResponse _$$_FeedbackCountsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FeedbackCountsResponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedbackCountsResponseToJson(
        _$_FeedbackCountsResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
