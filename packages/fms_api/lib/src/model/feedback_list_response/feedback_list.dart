import 'package:fms_api/src/model/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'my_data.dart';

part 'feedback_list.freezed.dart';
part 'feedback_list.g.dart';

@freezed
class FeedbackList with _$FeedbackList {
  factory FeedbackList({
    Meta? meta,
    @JsonKey(name: 'data') MyData? data,
  }) = _FeedbackList;

  factory FeedbackList.fromJson(Map<String, dynamic> json) =>
      _$FeedbackListFromJson(json);
}
