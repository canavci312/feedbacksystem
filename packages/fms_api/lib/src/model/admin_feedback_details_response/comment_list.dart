import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_list.freezed.dart';
part 'comment_list.g.dart';

@freezed
class CommentList with _$CommentList {
  factory CommentList({
    List<dynamic>? childComment,
    bool? isActive,
    bool? isChecked,
    int? id,
    int? userId,
    String? userName,
    dynamic parentCommentId,
    String? text,
    int? likeCount,
    int? dislikeCount,
    bool? isAnonym,
    DateTime? createdAt,
  }) = _CommentList;

  factory CommentList.fromJson(Map<String, dynamic> json) =>
      _$CommentListFromJson(json);
}
