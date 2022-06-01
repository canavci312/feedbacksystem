import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/customer_filter_feedbacks/model/feedback_filter_model.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:stream_transform/stream_transform.dart';
part 'customer_feedbacks_event.dart';
part 'customer_feedbacks_state.dart';
part 'customer_feedbacks_bloc.freezed.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class CustomerFeedbacksBloc
    extends Bloc<CustomerFeedbacksEvent, CustomerFeedbacksState> {
  FeedbackRepository _feedbackRepository;
  int _pageNumber = 1;

  List<PublicFeedbackList> _feedbackList = [];
  CustomerFeedbacksBloc(this._feedbackRepository) : super(_Initial()) {
    on<_FeedbacksFetched>(
      _onFeedbacksFetched,
      transformer: throttleDroppable(throttleDuration),
    );
    on<_FeedbacksSearched>(_onFeedbacksSearched);
    on<_FilterApplied>(_onFilterApplied);
  }

  FutureOr<void> _onFeedbacksFetched(
      _FeedbacksFetched event, Emitter<CustomerFeedbacksState> emit) async {
    bool? maxReached = state.whenOrNull(
      success: (list, filteredList, hasReachedMax) {
        return hasReachedMax;
      },
    );
    if (maxReached != null && maxReached == true) {
      return;
    }
    final fetchedList =
        await _feedbackRepository.getPublicFeedbackList(FeedbackGetListRequest(
      objectsPerPage: 50,
      pageNumber: _pageNumber,
    ));
    if (fetchedList != null) {
      if (fetchedList.isEmpty)
        emit(CustomerFeedbacksState.success(_feedbackList, [], true));
      else {
        _pageNumber++;
        emit(CustomerFeedbacksState.loading());
        emit(CustomerFeedbacksState.success(
            _feedbackList..addAll(fetchedList), [], false));
      }
    } else
      emit(CustomerFeedbacksState.success([], [], false));
  }

  FutureOr<void> _onFeedbacksSearched(
      _FeedbacksSearched event, Emitter<CustomerFeedbacksState> emit) async {
    String input = event.input;
    if (input.length >= 3) {
      final feedbackList = await _feedbackRepository.getPublicFeedbackList(
          FeedbackGetListRequest(
              objectsPerPage: 50, pageNumber: 1, titleQuery: input));
      if (feedbackList != null) {
        state.whenOrNull(success: ((list, filteredList, hasReachedMax) {
          emit(CustomerFeedbacksState.success(list, feedbackList, false));
        }));
      }
    }
    if (input.length < 3) {
      state.whenOrNull(success: ((list, filteredLis, hasReachedMax) {
        emit(CustomerFeedbacksState.success(list, [], false));
      }));
    }
  }

  FutureOr<void> _onFilterApplied(
      _FilterApplied event, Emitter<CustomerFeedbacksState> emit) async {
    var model = event.model;
    bool? isSolved = model?.feedbackStatus == 1 ? true : null;
    bool? isReplied = model?.feedbackStatus == 3 ? true : null;
    isSolved = model?.feedbackStatus == 2 ? false : isSolved;

    final feedbackList = await _feedbackRepository.getPublicFeedbackList(
        FeedbackGetListRequest(
            objectsPerPage: 100,
            sectorId: model?.sectorId,
            companyId: model?.companyId,
            typeId: model?.feedbackType,
            isSolved: isSolved,
            productId: model?.productId));
    if (feedbackList != null) {
      state.whenOrNull(success: ((list, filteredList, hasReachedMax) {
        emit(CustomerFeedbacksState.success(list, feedbackList, false));
      }));
    }
  }
}
