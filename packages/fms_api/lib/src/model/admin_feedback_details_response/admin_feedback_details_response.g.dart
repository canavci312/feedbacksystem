// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_feedback_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdminFeedbackDetailsResponse _$$_AdminFeedbackDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AdminFeedbackDetailsResponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AdminFeedbackDetailsResponseToJson(
        _$_AdminFeedbackDetailsResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
