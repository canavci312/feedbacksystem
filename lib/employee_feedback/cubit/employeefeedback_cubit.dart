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
  User? _curUser;
  EmployeeFeedbackCubit(this._feedbackRepository, this._authRepository)
      : super(EmployeeFeedbackState.initial());
  getFeedbackList() async {
    emit(EmployeeFeedbackState.loading());

    _curUser = await _authRepository.currentUser();
    feedbacks = await _feedbackRepository.getCompanyFeedbackList(
      FeedbackGetListRequest(),
    );
    if (feedbacks != null) {
      emit(EmployeeFeedbackState.success(feedbacks!, [], _curUser!.roleName!));
    }
  }

  directedToMe(bool isTrue) {
    if (isTrue) {
      filteredList.addAll(feedbacks!
          .where((element) =>
              element.directedToEmployeeId.toString() == _curUser?.id)
          .toList());
      var tempSet = filteredList.toSet();
      filteredList = tempSet.toList();
      emit(EmployeeFeedbackState.success(
          feedbacks!, filteredList, _curUser?.roleName ?? 'Company Employee'));
    } else {
      filteredList.removeWhere(
          (element) => element.directedToEmployeeId.toString() == _curUser?.id);
      emit(EmployeeFeedbackState.success(
          feedbacks!, filteredList, _curUser?.roleName ?? 'Company Employee'));
    }
  }

  void searchFeedbacks(String value) {
    if (filteredList.isNotEmpty) {
      filteredList = filteredList
          .where((element) => element.title!.contains(value))
          .toList();
    } else {
      filteredList.addAll(feedbacks ?? []);
      var tempSet = filteredList.toSet();
      filteredList = tempSet.toList();
      filteredList = filteredList
          .where((element) => element.title!.contains(value))
          .toList();
    }
    if (value.length < 2) {
      filteredList.addAll(feedbacks ?? []);
      var tempSet = filteredList.toSet();
      filteredList = tempSet.toList();
    }
    emit(EmployeeFeedbackState.success(
        feedbacks!, filteredList, _curUser?.roleName ?? 'Company Employee'));
  }

  void filterIsAnswered(bool bool) {
    if (bool) {
      filteredList.addAll(
          feedbacks!.where((element) => element.isReplied == true).toList());
      var tempSet = filteredList.toSet();
      filteredList = tempSet.toList();
      emit(EmployeeFeedbackState.success(
          feedbacks!, filteredList, _curUser?.roleName ?? 'Company Employee'));
    } else {
      filteredList.removeWhere((element) => element.isReplied == true);
      emit(EmployeeFeedbackState.success(
          feedbacks!, filteredList, _curUser?.roleName ?? 'Company Employee'));
    }
  }

  void filterNotSolved(bool bool) {
    if (bool) {
      filteredList.addAll(
          feedbacks!.where((element) => element.isSolved == false).toList());
      var tempSet = filteredList.toSet();
      filteredList = tempSet.toList();
      emit(EmployeeFeedbackState.success(
          feedbacks!, filteredList, _curUser?.roleName ?? 'Company Employee'));
    } else {
      filteredList.removeWhere((element) => element.isSolved == false);
      emit(EmployeeFeedbackState.success(
          feedbacks!, filteredList, _curUser?.roleName ?? 'Company Employee'));
    }
  }
}
