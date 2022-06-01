part of 'customer_feedbacks_bloc.dart';

@freezed
class CustomerFeedbacksState with _$CustomerFeedbacksState {
  const factory CustomerFeedbacksState.initial() = _Initial;
  const factory CustomerFeedbacksState.loading() = _Loading;
  const factory CustomerFeedbacksState.success(
      List<PublicFeedbackList> list,
      List<PublicFeedbackList> filteredList,
      [@Default(false) bool hasReachedMax]) = _Success;
}
