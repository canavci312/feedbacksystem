part of 'customer_statistics_cubit.dart';

@freezed
class CustomerStatisticsState with _$CustomerStatisticsState {
  const factory CustomerStatisticsState.initial() = _Initial;
  const factory CustomerStatisticsState.loading() = _Loading;

  const factory CustomerStatisticsState.success(
      CustomerStatisticsResponse response) = _Success;
}
