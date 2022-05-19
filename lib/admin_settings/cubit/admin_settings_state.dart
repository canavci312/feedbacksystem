part of 'admin_settings_cubit.dart';

@freezed
class AdminSettingsState with _$AdminSettingsState {
  const factory AdminSettingsState.initial() = _Initial;
    const factory AdminSettingsState.loading() = _Loading;
        const factory AdminSettingsState.success(int result) = _Success;
}
