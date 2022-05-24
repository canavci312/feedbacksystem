import 'package:bloc/bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_repository/report_repository.dart';

part 'employee_report_state.dart';
part 'employee_report_cubit.freezed.dart';

class EmployeeReportCubit extends Cubit<EmployeeReportState> {
    final ReportRepository _reportRepository;

  EmployeeReportCubit(this._reportRepository) : super(EmployeeReportState.initial());
    fetchEmployeeReport() async {
    emit(EmployeeReportState.loading());
    final response =await _reportRepository.employeeReport();
    emit(EmployeeReportState.success(response));
  }
}
