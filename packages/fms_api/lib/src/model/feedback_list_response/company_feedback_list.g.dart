// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_feedback_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyFeedbackList _$$_CompanyFeedbackListFromJson(
        Map<String, dynamic> json) =>
    _$_CompanyFeedbackList(
      id: json['id'] as int?,
      customerFirstName: json['customerFirstName'] as String?,
      title: json['title'] as String?,
      text: json['text'] as String?,
      sectorId: json['sectorId'] as int?,
      sectorName: json['sectorName'] as String?,
      companyId: json['companyId'] as int?,
      companyName: json['companyName'] as String?,
      productId: json['productId'] as int?,
      productName: json['productName'] as String?,
      typeId: json['typeId'] as int?,
      typeName: json['typeName'] as String?,
      subTypeId: json['subTypeId'] as int?,
      subTypeName: json['subTypeName'] as String?,
      createdAt: json['createdAt'] as String?,
      isAnonym: json['isAnonym'] as bool?,
      isReplied: json['isReplied'] as bool?,
      isSolved: json['isSolved'] as bool?,
      customerEmail: json['customerEmail'] as String?,
      customerPhone: json['customerPhone'] as String?,
      customerLastName: json['customerLastName'] as String?,
      directedToEmployeeId: json['directedToEmployeeId'] as int?,
      isArchived: json['isArchived'] as bool?,
    );

Map<String, dynamic> _$$_CompanyFeedbackListToJson(
        _$_CompanyFeedbackList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerFirstName': instance.customerFirstName,
      'title': instance.title,
      'text': instance.text,
      'sectorId': instance.sectorId,
      'sectorName': instance.sectorName,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'productId': instance.productId,
      'productName': instance.productName,
      'typeId': instance.typeId,
      'typeName': instance.typeName,
      'subTypeId': instance.subTypeId,
      'subTypeName': instance.subTypeName,
      'createdAt': instance.createdAt,
      'isAnonym': instance.isAnonym,
      'isReplied': instance.isReplied,
      'isSolved': instance.isSolved,
      'customerEmail': instance.customerEmail,
      'customerPhone': instance.customerPhone,
      'customerLastName': instance.customerLastName,
      'directedToEmployeeId': instance.directedToEmployeeId,
      'isArchived': instance.isArchived,
    };
