import 'package:bloc/bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_repository/report_repository.dart';

part 'display_reports_state.dart';
part 'display_reports_cubit.freezed.dart';

class DisplayReportsCubit extends Cubit<DisplayReportsState> {
  final ReportRepository _reportRepository;
  DisplayReportsCubit(this._reportRepository)
      : super(DisplayReportsState.initial());

  fetchFeedbackCountReports() async {
    emit(DisplayReportsState.loading());
    final response =await _reportRepository.feedbackCounts();
    emit(DisplayReportsState.success(response));
  }
}
