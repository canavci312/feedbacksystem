import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_get_list_req.freezed.dart';
part 'feedback_get_list_req.g.dart';

@freezed
class FeedbackGetListRequest with _$FeedbackGetListRequest {
  @JsonSerializable(
    includeIfNull: false,
  )
  const factory FeedbackGetListRequest(
      {int? objectsPerPage,
      int? pageNumber,
      String? sortColumn,
      bool? isAscending,
      String? titleQuery,
      String? textQuery,
      String? createdAtBefore,
      String? createdAtAfter,
      int? sectorId,
       int? userId,
      int? companyId,
      int? productId,
      int? typeId,
      int? subTypeId,
      bool? isDirected,
      bool? isArchived,
      bool? isAnonym,
      bool? isActive,
      bool? isChecked,
      bool? isReplied,
      bool? isSolved}) = _FeedbackGetListRequest;

  factory FeedbackGetListRequest.fromJson(Map<String, dynamic> json) =>
      _$FeedbackGetListRequestFromJson(json);
}
