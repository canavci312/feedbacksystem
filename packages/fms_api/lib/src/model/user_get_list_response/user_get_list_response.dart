import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'meta.dart';

part 'user_get_list_response.freezed.dart';
part 'user_get_list_response.g.dart';

@freezed
class UserGetListResponse with _$UserGetListResponse {
  factory UserGetListResponse({
    Meta? meta,
    Data? data,
  }) = _UserGetListResponse;

  factory UserGetListResponse.fromJson(Map<String, dynamic> json) =>
      _$UserGetListResponseFromJson(json);
}
