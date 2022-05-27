part of 'admin_feedback_list_cubit.dart';

@freezed
class AdminFeedbackListState with _$AdminFeedbackListState {
  const factory AdminFeedbackListState.initial() = _Initial;
  const factory AdminFeedbackListState.success(
          List<AdminFeedbackList> list, List<AdminFeedbackList> filteredList) =
      _Success;
  const factory AdminFeedbackListState.loading() = _Loading;
}
