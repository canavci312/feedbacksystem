import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_feedback_list.freezed.dart';
part 'public_feedback_list.g.dart';

@freezed
class PublicFeedbackList with _$PublicFeedbackList {
  factory PublicFeedbackList({
    int? id,
    String? customerFirstName,
    String? title,
    String? text,
    int? sectorId,
    String? sectorName,
    int? companyId,
    String? companyName,
    int? productId,
    String? productName,
    int? typeId,
    String? typeName,
    int? subTypeId,
    String? subTypeName,
    String? createdAt,
    bool? isAnonym,
    bool? isReplied,
    bool? isSolved,
  }) = _PublicFeedbackList;

  factory PublicFeedbackList.fromJson(Map<String, dynamic> json) =>
      _$PublicFeedbackListFromJson(json);
}
