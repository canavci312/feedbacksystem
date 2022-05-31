import 'package:freezed_annotation/freezed_annotation.dart';

import 'list.dart';

part 'company_list.freezed.dart';
part 'company_list.g.dart';

@freezed
class CompanyList with _$CompanyList {
  factory CompanyList({
    List<Company>? list,
    int? count,
  }) = _CompanyList;

  factory CompanyList.fromJson(Map<String, dynamic> json) =>
      _$CompanyListFromJson(json);
}
