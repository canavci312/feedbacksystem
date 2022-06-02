part of 'company_representative_users_cubit.dart';

@freezed
class CompanyRepresentativeUsersState with _$CompanyRepresentativeUsersState {
  const factory CompanyRepresentativeUsersState.initial() = _Initial;
  const factory CompanyRepresentativeUsersState.loading() = _Loading;
  const factory CompanyRepresentativeUsersState.succes(List<UserList> list) = _Success;

}
