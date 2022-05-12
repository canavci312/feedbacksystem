// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackList _$$_FeedbackListFromJson(Map<String, dynamic> json) =>
    _$_FeedbackList(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : MyData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedbackListToJson(_$_FeedbackList instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
