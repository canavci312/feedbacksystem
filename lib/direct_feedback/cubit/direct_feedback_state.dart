part of 'direct_feedback_cubit.dart';

@freezed
class DirectFeedbackState with _$DirectFeedbackState {
  const factory DirectFeedbackState.initial() = _Initial;
  const factory DirectFeedbackState.loading() = _Loading;
  const factory DirectFeedbackState.success(List<UserList> list) = _Success;
}
