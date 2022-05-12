// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyList _$$_CompanyListFromJson(Map<String, dynamic> json) =>
    _$_CompanyList(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => MyList.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_CompanyListToJson(_$_CompanyList instance) =>
    <String, dynamic>{
      'list': instance.list,
      'count': instance.count,
    };
