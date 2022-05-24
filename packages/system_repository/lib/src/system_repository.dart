import 'package:fms_api/fms_api.dart';

/// {@template system_repository}
/// Repository for System related api calls
/// {@endtemplate}
///
class SystemRepository {
  final FmsApi _fmsApi;
  const SystemRepository(this._fmsApi);
  Future<void> setModeOfOperation(int modeId) async {
    await _fmsApi.setModeOfOperation(modeId);
  }

  Future<int> getModeOfOperation() async {
    return _fmsApi.getModeOfOperation();
  }
}
