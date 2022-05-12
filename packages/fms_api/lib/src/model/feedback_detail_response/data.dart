import 'package:freezed_annotation/freezed_annotation.dart';

import 'comment_list.dart';
import 'reply_list.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    List<ReplyList>? replyList,
    List<CommentList>? commentList,
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
    dynamic subTypeId,
    dynamic subTypeName,
    DateTime? createdAt,
    bool? isAnonym,
    bool? isReplied,
    bool? isSolved,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
