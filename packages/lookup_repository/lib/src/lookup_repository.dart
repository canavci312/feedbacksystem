import 'package:fms_api/fms_api.dart';

/// {@template feedback_repository}
/// Feedback repository
/// {@endtemplate}
class LookUpRepository {
  LookUpRepository(this._fmsApi);
  final FmsApi _fmsApi;
  Future<CompanyList?> getCompanies({int? sectorId}) async {
    return await _fmsApi.getCompanies(sectorId);
  }

  Future<CompanyList?> getProducts({int? companyId}) async {
    return await _fmsApi.getProducts(companyId);
  }
}
