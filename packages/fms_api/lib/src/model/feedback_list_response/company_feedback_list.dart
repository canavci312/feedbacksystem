import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_feedback_list.freezed.dart';
part 'company_feedback_list.g.dart';

@freezed
class CompanyFeedbackList with _$CompanyFeedbackList {
  factory CompanyFeedbackList({
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
  }) = _CompanyFeedbackList;

  factory CompanyFeedbackList.fromJson(Map<String, dynamic> json) =>
      _$CompanyFeedbackListFromJson(json);
}
