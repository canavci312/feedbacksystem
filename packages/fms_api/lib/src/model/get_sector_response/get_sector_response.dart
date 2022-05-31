import 'package:freezed_annotation/freezed_annotation.dart';

import 'my_list.dart';

part 'get_sector_response.freezed.dart';
part 'get_sector_response.g.dart';

@freezed
class GetSectorResponse with _$GetSectorResponse {
  factory GetSectorResponse({
    List<MyList>? list,
    int? count,
  }) = _GetSectorResponse;

  factory GetSectorResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSectorResponseFromJson(json);
}
