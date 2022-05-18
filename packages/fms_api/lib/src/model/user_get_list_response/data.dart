import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_list.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    int? totalCount,
    int? filteredCount,
    int? objectsPerPage,
    int? pageNumber,
    List<UserList>? userList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
