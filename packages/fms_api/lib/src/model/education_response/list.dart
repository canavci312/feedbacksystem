import 'package:freezed_annotation/freezed_annotation.dart';

part 'list.freezed.dart';
part 'list.g.dart';

@freezed
class MyList with _$MyList {
  factory MyList({
    int? id,
    String? name,
  }) = _MyList;

  factory MyList.fromJson(Map<String, dynamic> json) => _$MyListFromJson(json);
}
