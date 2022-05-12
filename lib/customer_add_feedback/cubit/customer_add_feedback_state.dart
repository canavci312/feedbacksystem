part of 'customer_add_feedback_cubit.dart';

@freezed
class CustomerAddFeedbackState with _$CustomerAddFeedbackState {
  const factory CustomerAddFeedbackState.initial({
    bool? isLoading,
    bool? showErrorDialog,
    bool? isSuccessful,
  }) = _Initial;
}
