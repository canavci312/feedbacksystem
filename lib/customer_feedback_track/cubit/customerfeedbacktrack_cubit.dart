import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customerfeedbacktrack_state.dart';
part 'customerfeedbacktrack_cubit.freezed.dart';

class CustomerFeedbackTrackCubit extends Cubit<CustomerFeedbackTrackState> {
  FeedbackRepository _feedbackRepository;
  final AuthRepository _authRepository;

  CustomerFeedbackTrackCubit(this._feedbackRepository, this._authRepository)
      : super(CustomerFeedbackTrackState.initial());
  fetchUserFeedbacks() async {
    emit(CustomerFeedbackTrackState.loading());
    var user = await _authRepository.currentUser();
    final feedbackList = await _feedbackRepository.getPublicFeedbackList(
        FeedbackGetListRequest(
            objectsPerPage: 50, pageNumber: 1, userId: user!.id!));
    if (feedbackList != null)
      emit(CustomerFeedbackTrackState.success(feedbackList));
    else
      emit(CustomerFeedbackTrackState.success([]));
  }
}
