// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EducationResponse _$$_EducationResponseFromJson(Map<String, dynamic> json) =>
    _$_EducationResponse(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => MyList.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_EducationResponseToJson(
        _$_EducationResponse instance) =>
    <String, dynamic>{
      'list': instance.list,
      'count': instance.count,
    };
