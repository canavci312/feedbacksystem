import 'package:freezed_annotation/freezed_annotation.dart';

import 'list.dart';

part 'lookup_roles_response.freezed.dart';
part 'lookup_roles_response.g.dart';

@freezed
class LookupRolesResponse with _$LookupRolesResponse {
  factory LookupRolesResponse({
    List<MyList>? list,
    int? count,
  }) = _LookupRolesResponse;

  factory LookupRolesResponse.fromJson(Map<String, dynamic> json) =>
      _$LookupRolesResponseFromJson(json);
}
