// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upsert_feedback_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpsertFeedbackRequest _$$_UpsertFeedbackRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UpsertFeedbackRequest(
      id: json['id'] as int?,
      title: json['title'] as String,
      text: json['text'] as String,
      productId: json['productId'] as int,
      typeId: json['typeId'] as int?,
      subTypeId: json['subTypeId'] as int?,
      isAnonym: json['isAnonym'] as bool,
    );

Map<String, dynamic> _$$_UpsertFeedbackRequestToJson(
    _$_UpsertFeedbackRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['text'] = instance.text;
  val['productId'] = instance.productId;
  writeNotNull('typeId', instance.typeId);
  writeNotNull('subTypeId', instance.subTypeId);
  val['isAnonym'] = instance.isAnonym;
  return val;
}
