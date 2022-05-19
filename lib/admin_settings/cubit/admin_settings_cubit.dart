import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:system_repository/system_repository.dart';

part 'admin_settings_state.dart';
part 'admin_settings_cubit.freezed.dart';

class AdminSettingsCubit extends Cubit<AdminSettingsState> {
  final SystemRepository _systemRepository;
  AdminSettingsCubit(this._systemRepository)
      : super(AdminSettingsState.initial());
  getCurrentSystemMode() async {
    emit(AdminSettingsState.loading());
    var response = await _systemRepository.getModeOfOperation();
    emit(AdminSettingsState.success(response));
  }

  setModeOfOperation(int mode) async {
    emit(AdminSettingsState.loading());
    await _systemRepository.setModeOfOperation(mode);
    getCurrentSystemMode();
  }
}
