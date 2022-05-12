import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_comment.freezed.dart';
part 'child_comment.g.dart';

@freezed
class ChildComment with _$ChildComment {
  factory ChildComment({
    int? id,
    int? userId,
    String? userName,
    int? parentCommentId,
    String? text,
    int? likeCount,
    int? dislikeCount,
    bool? isAnonym,
    DateTime? createdAt,
    dynamic childComment,
  }) = _ChildComment;

  factory ChildComment.fromJson(Map<String, dynamic> json) =>
      _$ChildCommentFromJson(json);
}
