// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      totalCount: json['totalCount'] as int?,
      filteredCount: json['filteredCount'] as int?,
      objectsPerPage: json['objectsPerPage'] as int?,
      pageNumber: json['pageNumber'] as int?,
      userList: (json['userList'] as List<dynamic>?)
          ?.map((e) => UserList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'totalCount': instance.totalCount,
      'filteredCount': instance.filteredCount,
      'objectsPerPage': instance.objectsPerPage,
      'pageNumber': instance.pageNumber,
      'userList': instance.userList,
    };
