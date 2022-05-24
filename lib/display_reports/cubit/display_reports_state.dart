part of 'display_reports_cubit.dart';

@freezed
class DisplayReportsState with _$DisplayReportsState {
  const factory DisplayReportsState.initial() = _Initial;
  const factory DisplayReportsState.loading() = _Loading;
  const factory DisplayReportsState.success(FeedbackCountsResponse response) =
      _Success;
}
