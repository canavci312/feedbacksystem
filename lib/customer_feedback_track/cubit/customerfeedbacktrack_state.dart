part of 'customerfeedbacktrack_cubit.dart';

@freezed
class CustomerFeedbackTrackState with _$CustomerFeedbackTrackState {
  const factory CustomerFeedbackTrackState.initial() = _Initial;
  const factory CustomerFeedbackTrackState.loading() = _Loading;
  const factory CustomerFeedbackTrackState.success(
      List<PublicFeedbackList> list) = _Success;
}
