part of 'customer_feedbacks_bloc.dart';

@freezed
class CustomerFeedbacksEvent with _$CustomerFeedbacksEvent {
  const factory CustomerFeedbacksEvent.fetchFeedbacks() = _FeedbacksFetched;


  const factory CustomerFeedbacksEvent.searchFeedbacks(String input) = _FeedbacksSearched;

  const factory CustomerFeedbacksEvent.applyFilter(FeedbackFilterModel? model) = _FilterApplied;

}