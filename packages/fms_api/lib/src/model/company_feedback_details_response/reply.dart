import 'package:freezed_annotation/freezed_annotation.dart';

part 'reply.freezed.dart';
part 'reply.g.dart';

@freezed
class Reply with _$Reply {
  const factory Reply(
      {int? id,
      int? userId,
      String? text,
      String? userName,
      int? userRoleId,
      String? userRole,
      String? companyName,
      String? createdAt}) = _Reply;

  factory Reply.fromJson(Map<String, dynamic> json) => _$ReplyFromJson(json);
}
