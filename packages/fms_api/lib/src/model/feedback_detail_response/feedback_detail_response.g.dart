// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackDetailResponse _$$_FeedbackDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FeedbackDetailResponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedbackDetailResponseToJson(
        _$_FeedbackDetailResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
