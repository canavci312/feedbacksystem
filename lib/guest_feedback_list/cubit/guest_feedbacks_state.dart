part of 'guest_feedbacks_cubit.dart';

@freezed
class GuestFeedbacksState with _$GuestFeedbacksState {
  const factory GuestFeedbacksState.initial() = _Initial;
  const factory GuestFeedbacksState.loading() = _Loading;
  const factory GuestFeedbacksState.success(List<PublicFeedbackList> list,
      List<PublicFeedbackList> filteredList) = _Success;
}
