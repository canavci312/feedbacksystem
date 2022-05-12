// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_get_list_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackGetListRequest _$$_FeedbackGetListRequestFromJson(
        Map<String, dynamic> json) =>
    _$_FeedbackGetListRequest(
      objectsPerPage: json['objectsPerPage'] as int?,
      pageNumber: json['pageNumber'] as int?,
      sortColumn: json['sortColumn'] as String?,
      isAscending: json['isAscending'] as bool?,
      titleQuery: json['titleQuery'] as String?,
      textQuery: json['textQuery'] as String?,
      createdAtBefore: json['createdAtBefore'] as String?,
      createdAtAfter: json['createdAtAfter'] as String?,
      sectorId: json['sectorId'] as int?,
      userId: json['userId'] as int?,
      companyId: json['companyId'] as int?,
      productId: json['productId'] as int?,
      typeId: json['typeId'] as int?,
      subTypeId: json['subTypeId'] as int?,
      isDirected: json['isDirected'] as bool?,
      isArchived: json['isArchived'] as bool?,
      isAnonym: json['isAnonym'] as bool?,
      isActive: json['isActive'] as bool?,
      isChecked: json['isChecked'] as bool?,
      isReplied: json['isReplied'] as bool?,
      isSolved: json['isSolved'] as bool?,
    );

Map<String, dynamic> _$$_FeedbackGetListRequestToJson(
    _$_FeedbackGetListRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectsPerPage', instance.objectsPerPage);
  writeNotNull('pageNumber', instance.pageNumber);
  writeNotNull('sortColumn', instance.sortColumn);
  writeNotNull('isAscending', instance.isAscending);
  writeNotNull('titleQuery', instance.titleQuery);
  writeNotNull('textQuery', instance.textQuery);
  writeNotNull('createdAtBefore', instance.createdAtBefore);
  writeNotNull('createdAtAfter', instance.createdAtAfter);
  writeNotNull('sectorId', instance.sectorId);
  writeNotNull('userId', instance.userId);
  writeNotNull('companyId', instance.companyId);
  writeNotNull('productId', instance.productId);
  writeNotNull('typeId', instance.typeId);
  writeNotNull('subTypeId', instance.subTypeId);
  writeNotNull('isDirected', instance.isDirected);
  writeNotNull('isArchived', instance.isArchived);
  writeNotNull('isAnonym', instance.isAnonym);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('isChecked', instance.isChecked);
  writeNotNull('isReplied', instance.isReplied);
  writeNotNull('isSolved', instance.isSolved);
  return val;
}
