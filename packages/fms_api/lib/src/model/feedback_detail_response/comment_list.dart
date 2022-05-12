import 'package:freezed_annotation/freezed_annotation.dart';

import 'child_comment.dart';

part 'comment_list.freezed.dart';
part 'comment_list.g.dart';

@freezed
class CommentList with _$CommentList {
  factory CommentList({
    int? id,
    int? userId,
    String? userName,
    dynamic parentCommentId,
    String? text,
    int? likeCount,
    int? dislikeCount,
    bool? isAnonym,
    DateTime? createdAt,
    List<ChildComment>? childComment,
  }) = _CommentList;

  factory CommentList.fromJson(Map<String, dynamic> json) =>
      _$CommentListFromJson(json);
}
