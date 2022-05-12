import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_feedback_list.freezed.dart';
part 'admin_feedback_list.g.dart';

@freezed
class AdminFeedbackList with _$AdminFeedbackList {
  factory AdminFeedbackList({
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
    String? customerEmail,
    String? customerPhone,
    String? customerLastName,
    int? directedToEmploteeId,
    bool? isArchived,
    bool? isActive,
    bool? isChecked,
  }) = _AdminFeedbackList;

  factory AdminFeedbackList.fromJson(Map<String, dynamic> json) =>
      _$AdminFeedbackListFromJson(json);
}
