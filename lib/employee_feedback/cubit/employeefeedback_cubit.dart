import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employeefeedback_state.dart';
part 'employeefeedback_cubit.freezed.dart';

class EmployeeFeedbackCubit extends Cubit<EmployeeFeedbackState> {
  final FeedbackRepository _feedbackRepository;
  List<CompanyFeedbackList>? feedbacks;
  List<CompanyFeedbackList> filteredList = [];
  final AuthRepository _authRepository;
  late User _curUser;
  EmployeeFeedbackCubit(this._feedbackRepository, this._authRepository)
      : super(EmployeeFeedbackState.initial());
  getFeedbackList() async {
    emit(EmployeeFeedbackState.loading());
    var _curUser = await _authRepository.currentUser();
    feedbacks = await _feedbackRepository.getCompanyFeedbackList(
      FeedbackGetListRequest(),
    );
    if (feedbacks != null) {
      emit(EmployeeFeedbackState.success(feedbacks!, [], _curUser!.roleName!));
    }
  }

  void searchFeedbacks(String value) {}

  void filterIsAnswered(bool bool) {
    if (bool) {
      filteredList.addAll(
          feedbacks!.where((element) => element.isReplied == true).toList());
      var tempSet = filteredList.toSet();
      filteredList = tempSet.toList();
      emit(EmployeeFeedbackState.success(
          feedbacks!, filteredList, _curUser.roleName!));
    } else {
      filteredList.addAll(
          feedbacks!.where((element) => element.isReplied == false).toList());
      var tempSet = filteredList.toSet();
      filteredList = tempSet.toList();
      emit(EmployeeFeedbackState.success(
          feedbacks!, filteredList, _curUser.roleName!));
    }
  }
}
