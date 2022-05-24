import 'package:bloc/bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_repository/report_repository.dart';

part 'customer_statistics_state.dart';
part 'customer_statistics_cubit.freezed.dart';

class CustomerStatisticsCubit extends Cubit<CustomerStatisticsState> {
  final ReportRepository _reportRepository;

  CustomerStatisticsCubit(this._reportRepository)
      : super(CustomerStatisticsState.initial());
  fetchCustomerStatistics() async {
    emit(CustomerStatisticsState.loading());
    final response = await _reportRepository.customerStatistics();
    emit(CustomerStatisticsState.success(response));
  }
}
