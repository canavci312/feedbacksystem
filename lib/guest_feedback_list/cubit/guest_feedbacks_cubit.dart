import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_feedbacks_state.dart';
part 'guest_feedbacks_cubit.freezed.dart';

class GuestFeedbacksCubit extends Cubit<GuestFeedbacksState> {
  FeedbackRepository _feedbackRepository;
  GuestFeedbacksCubit(this._feedbackRepository)
      : super(GuestFeedbacksState.initial());
  fetchFeedbacks() async {
    emit(GuestFeedbacksState.loading());
    final feedbackList =
        await _feedbackRepository.getPublicFeedbackList(FeedbackGetListRequest(
      objectsPerPage: 50,
      pageNumber: 1,
    ));
    if (feedbackList != null)
      emit(GuestFeedbacksState.success(feedbackList, []));
    else
      emit(GuestFeedbacksState.success([], []));
  }

  searchFeedbacks(String input) async {
    if (input.length >= 3) {
      final feedbackList = await _feedbackRepository.getPublicFeedbackList(
          FeedbackGetListRequest(
              objectsPerPage: 10, pageNumber: 1, titleQuery: input));
      if (feedbackList != null) {
        state.whenOrNull(success: ((list, filteredList) {
          emit(GuestFeedbacksState.success(list, feedbackList));
        }));
      }
    }
    if (input.length < 3) {
      state.whenOrNull(success: ((list, filteredList) {
        emit(GuestFeedbacksState.success(list, []));
      }));
    }
  }
}
