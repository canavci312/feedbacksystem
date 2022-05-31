import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_list.freezed.dart';
part 'my_list.g.dart';

@freezed
class MyList with _$MyList {
  factory MyList({
    int? id,
    String? name,
  }) = _MyList;

  factory MyList.fromJson(Map<String, dynamic> json) => _$MyListFromJson(json);
}
