import 'package:fms_api/fms_api.dart';

/// {@template reaction_repository}
/// Reaction repository
/// {@endtemplate}
class ReportRepository {
  ReportRepository(this._fmsApi);
  final FmsApi _fmsApi;
  Future<FeedbackCountsResponse> feedbackCounts() async {
    final response = await _fmsApi.getFeedbackCounts();
    return response;
  }

  Future<EmployeeReportResponse> employeeReport() async {
    return _fmsApi.getEmployeeReport();
  }

  Future<CustomerStatisticsResponse> customerStatistics() async {
    return _fmsApi.getCustomerStatistics();
  }
}
