// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      replyList: (json['replyList'] as List<dynamic>?)
          ?.map((e) => ReplyList.fromJson(e as Map<String, dynamic>))
          .toList(),
      commentList: (json['commentList'] as List<dynamic>?)
          ?.map((e) => CommentList.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      subTypeId: json['subTypeId'],
      subTypeName: json['subTypeName'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      isAnonym: json['isAnonym'] as bool?,
      isReplied: json['isReplied'] as bool?,
      isSolved: json['isSolved'] as bool?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'replyList': instance.replyList,
      'commentList': instance.commentList,
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
      'createdAt': instance.createdAt?.toIso8601String(),
      'isAnonym': instance.isAnonym,
      'isReplied': instance.isReplied,
      'isSolved': instance.isSolved,
    };
