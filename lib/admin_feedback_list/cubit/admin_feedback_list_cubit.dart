import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/admin_filter_feedbacks/model/feedback_filter_model.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_feedback_list_state.dart';
part 'admin_feedback_list_cubit.freezed.dart';

class AdminFeedbackListCubit extends Cubit<AdminFeedbackListState> {
  FeedbackRepository _feedbackRepository;
  AdminFeedbackListCubit(this._feedbackRepository)
      : super(AdminFeedbackListState.initial());

  fetchFeedbacks() async {
    emit(AdminFeedbackListState.loading());
    final feedbackList =
        await _feedbackRepository.getAdminFeedbackList(FeedbackGetListRequest(
      objectsPerPage: 50,
      pageNumber: 1,
    ));
    if (feedbackList != null)
      emit(AdminFeedbackListState.success(feedbackList, []));
    else
      emit(AdminFeedbackListState.success([], []));
  }

  searchFeedbacks(String input) async {
    if (input.length >= 3) {
      final feedbackList = await _feedbackRepository.getAdminFeedbackList(
          FeedbackGetListRequest(
              objectsPerPage: 10, pageNumber: 1, titleQuery: input));
      if (feedbackList != null) {
        state.whenOrNull(success: ((list, filteredList) {
          emit(AdminFeedbackListState.success(list, feedbackList));
        }));
      }
    }
    if (input.length < 3) {
      state.whenOrNull(success: ((list, filteredList) {
        emit(AdminFeedbackListState.success(list, []));
      }));
    }
  }

  applyFilter(AdminFeedbackFilterModel? model) async {
    bool? isSolved = model?.feedbackStatus == 1 ? true : null;
    bool? isReplied = model?.feedbackStatus == 3 ? true : null;
    isSolved = model?.feedbackStatus == 2 ? false : isSolved;

    final feedbackList = await _feedbackRepository.getAdminFeedbackList(
        FeedbackGetListRequest(
            objectsPerPage: 100,
            typeId: model?.feedbackType,
            sectorId: model?.sectorId,
            companyId: model?.companyId,
            isChecked: model?.isChecked,
            isArchived: model?.isArchieved,
            isDirected: model?.isDirected,
            productId: model?.productId));
    if (feedbackList != null) {
      state.whenOrNull(success: ((
        list,
        filteredList,
      ) {
        emit(AdminFeedbackListState.success(list, feedbackList));
      }));
    }
  }
}
