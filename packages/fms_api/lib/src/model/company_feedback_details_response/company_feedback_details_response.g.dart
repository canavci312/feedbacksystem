// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_feedback_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyFeedbackDetailsResponse _$$_CompanyFeedbackDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CompanyFeedbackDetailsResponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CompanyFeedbackDetailsResponseToJson(
        _$_CompanyFeedbackDetailsResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
