import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/company_filter_feedbacks/model/feedback_filter_model.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employeefeedback_state.dart';
part 'employeefeedback_cubit.freezed.dart';

class EmployeeFeedbackCubit extends Cubit<EmployeeFeedbackState> {
  final FeedbackRepository _feedbackRepository;
  List<CompanyFeedbackList>? feedbacks;
  List<CompanyFeedbackList> filteredList = [];
  final AuthRepository _authRepository;
  User? _curUser;
  EmployeeFeedbackCubit(this._feedbackRepository, this._authRepository)
      : super(EmployeeFeedbackState.initial());
  getFeedbackList() async {
    emit(EmployeeFeedbackState.loading());

    _curUser = await _authRepository.currentUser();
    feedbacks = await _feedbackRepository.getCompanyFeedbackList(
      FeedbackGetListRequest(objectsPerPage: 100),
    );
    if (feedbacks != null) {
      emit(EmployeeFeedbackState.success(feedbacks!, [], _curUser!.roleName!));
    }
  }

  void searchFeedbacks(String value) async{
        if (value.length >= 3) {
      final feedbackList = await _feedbackRepository.getCompanyFeedbackList(
          FeedbackGetListRequest(
              objectsPerPage: 50, pageNumber: 1, titleQuery: value));
      if (feedbackList != null) {
        state.whenOrNull(success: ((list, filteredList, hasReachedMax) {
          emit(EmployeeFeedbackState.success(list, feedbackList, _curUser?.roleName ?? 'Company Employee'));
        }));
      }
    }
    if (value.length < 3) {
      state.whenOrNull(success: ((list, filteredLis, hasReachedMax) {
        emit(EmployeeFeedbackState.success(list, [], _curUser?.roleName ?? 'Company Employee'));
      }));
    }
  }

  void applyFilter(CompanyFeedbackFilterModel? model) async{
    bool? isSolved = model?.feedbackStatus == 1 ? true : null;
    bool? isReplied = model?.feedbackStatus == 3 ? true : null;
    isSolved = model?.feedbackStatus == 2 ? false : isSolved;

    final feedbackList = await _feedbackRepository.getCompanyFeedbackList(
        FeedbackGetListRequest(
            objectsPerPage: 100,
            typeId: model?.feedbackType,
            isArchived: model?.isArchieved,
            isDirected: model?.isDirected,
            productId: model?.productId));
    if (feedbackList != null) {
      state.whenOrNull(success: ((list, filteredList, hasReachedMax) {
        emit(EmployeeFeedbackState.success(list, feedbackList, _curUser?.roleName ?? 'Company Employee'));
      }));
    }
  }

}
