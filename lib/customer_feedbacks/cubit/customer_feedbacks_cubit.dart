import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/customer_filter_feedbacks/model/feedback_filter_model.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_feedbacks_state.dart';
part 'customer_feedbacks_cubit.freezed.dart';

class CustomerFeedbacksCubit extends Cubit<CustomerFeedbacksState> {
  FeedbackRepository _feedbackRepository;
  CustomerFeedbacksCubit(this._feedbackRepository)
      : super(CustomerFeedbacksState.initial());
  fetchFeedbacks() async {
    emit(CustomerFeedbacksState.loading());
    final feedbackList =
        await _feedbackRepository.getPublicFeedbackList(FeedbackGetListRequest(
      objectsPerPage: 50,
      pageNumber: 1,
    ));
    if (feedbackList != null)
      emit(CustomerFeedbacksState.success(feedbackList, []));
    else
      emit(CustomerFeedbacksState.success([], []));
  }

  searchFeedbacks(String input) async {
    if (input.length >= 3) {
      final feedbackList = await _feedbackRepository.getPublicFeedbackList(
          FeedbackGetListRequest(
              objectsPerPage: 10, pageNumber: 1, titleQuery: input));
      if (feedbackList != null) {
        state.whenOrNull(success: ((list, filteredList) {
          emit(CustomerFeedbacksState.success(list, feedbackList));
        }));
      }
    }
    if (input.length < 3) {
      state.whenOrNull(success: ((list, filteredList) {
        emit(CustomerFeedbacksState.success(list, []));
      }));
    }
  }

  void applyFilter(FeedbackFilterModel? model) async {
    bool? isSolved = model?.feedbackStatus == 1 ? true : null;
    bool? isReplied = model?.feedbackStatus == 3 ? true : null;
    isSolved = model?.feedbackStatus == 2 ? false : isSolved;

    final feedbackList = await _feedbackRepository.getPublicFeedbackList(
        FeedbackGetListRequest(
            objectsPerPage: 50,
            sectorId: model?.sectorId,
            companyId: model?.companyId,
            typeId: model?.feedbackType,
            isSolved: isSolved,
            productId: model?.productId));
    if (feedbackList != null) {
      state.whenOrNull(success: ((list, filteredList) {
        emit(CustomerFeedbacksState.success(list, feedbackList));
      }));
    }
  }
}
