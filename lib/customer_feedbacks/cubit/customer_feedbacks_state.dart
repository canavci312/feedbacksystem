part of 'customer_feedbacks_cubit.dart';

@freezed
class CustomerFeedbacksState with _$CustomerFeedbacksState {
  const factory CustomerFeedbacksState.initial() = _Initial;
  const factory CustomerFeedbacksState.loading() = _Loading;
  const factory CustomerFeedbacksState.success(List<PublicFeedbackList> list,
      List<PublicFeedbackList> filteredList) = _Success;
}
