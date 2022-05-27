part of 'root_page_cubit.dart';

@freezed
class RootPageState with _$RootPageState {
  const factory RootPageState.initial() = _Initial;
  const factory RootPageState.unauth() = _UnAuth;

  const factory RootPageState.success(Roles role) = _Success;
}
