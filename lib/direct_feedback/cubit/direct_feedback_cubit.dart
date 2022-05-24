import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'direct_feedback_state.dart';
part 'direct_feedback_cubit.freezed.dart';

class DirectFeedbackCubit extends Cubit<DirectFeedbackState> {
  final UserRepository _userRepository;
  final FeedbackRepository _feedbackRepository;
  int feedbackId;
  DirectFeedbackCubit(
      this._userRepository, this._feedbackRepository, this.feedbackId)
      : super(DirectFeedbackState.initial());
  fetchEmployees() async {
    emit(DirectFeedbackState.loading());
    var response = await _userRepository.getUserList();
    var userList = response!.data!.userList
        ?.where((element) => element.roleName == 'Company Employee')
        .toList();
    emit(DirectFeedbackState.success(userList ?? []));
  }

  directFeedback(int employeeId) {
    _feedbackRepository.directFeedback(feedbackId, employeeId);
  }
}
