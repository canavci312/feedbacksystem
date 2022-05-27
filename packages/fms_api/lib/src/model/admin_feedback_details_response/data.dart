import 'package:freezed_annotation/freezed_annotation.dart';

import 'comment_list.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    List<dynamic>? replyList,
    List<CommentList>? commentList,
    bool? isActive,
    bool? isChecked,
    String? customerEmail,
    String? customerPhone,
    String? customerLastName,
    dynamic directedToEmployeeId,
    bool? isArchived,
    int? id,
    int? userId,
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
    dynamic subTypeId,
    dynamic subTypeName,
    int? likeCount,
    int? dislikeCount,
    dynamic userReaction,
    DateTime? createdAt,
    bool? isAnonym,
    bool? isReplied,
    bool? isSolved,
    bool? isMine,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
