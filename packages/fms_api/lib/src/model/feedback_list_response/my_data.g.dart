// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyData _$$_MyDataFromJson(Map<String, dynamic> json) => _$_MyData(
      totalCount: json['totalCount'] as int?,
      filteredCount: json['filteredCount'] as int?,
      objectsPerPage: json['objectsPerPage'] as int?,
      pageNumber: json['pageNumber'] as int?,
      publicFeedbackList: (json['publicFeedbackList'] as List<dynamic>?)
          ?.map((e) => PublicFeedbackList.fromJson(e as Map<String, dynamic>))
          .toList(),
      adminFeedbackList: (json['adminFeedbackList'] as List<dynamic>?)
          ?.map((e) => AdminFeedbackList.fromJson(e as Map<String, dynamic>))
          .toList(),
      companyFeedbackList: (json['companyFeedbackList'] as List<dynamic>?)
          ?.map((e) => CompanyFeedbackList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MyDataToJson(_$_MyData instance) => <String, dynamic>{
      'totalCount': instance.totalCount,
      'filteredCount': instance.filteredCount,
      'objectsPerPage': instance.objectsPerPage,
      'pageNumber': instance.pageNumber,
      'publicFeedbackList': instance.publicFeedbackList,
      'adminFeedbackList': instance.adminFeedbackList,
      'companyFeedbackList': instance.companyFeedbackList,
    };
