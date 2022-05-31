import 'package:freezed_annotation/freezed_annotation.dart';

part 'list.freezed.dart';
part 'list.g.dart';

@freezed
class Company with _$Company {
  factory Company({
    int? id,
    String? name,
  }) = _MyList;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}
