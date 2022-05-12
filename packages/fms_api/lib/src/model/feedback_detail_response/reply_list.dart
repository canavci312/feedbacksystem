import 'package:freezed_annotation/freezed_annotation.dart';

part 'reply_list.freezed.dart';
part 'reply_list.g.dart';

@freezed
class ReplyList with _$ReplyList {
  factory ReplyList({
    int? id,
    int? userId,
    String? text,
    String? userName,
    int? userRoleId,
    String? userRole,
    String? companyName,
    DateTime? createdAt,
  }) = _ReplyList;

  factory ReplyList.fromJson(Map<String, dynamic> json) =>
      _$ReplyListFromJson(json);
}
