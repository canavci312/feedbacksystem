import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_page_state.dart';
part 'root_page_cubit.freezed.dart';

enum Roles { admin, customer, guest, representative, employee, manager }

class RootPageCubit extends Cubit<RootPageState> {
  final AuthRepository _authRepository;
  RootPageCubit(this._authRepository) : super(RootPageState.initial());

  getRole() async {
    final user = await _authRepository.currentUser();
    print(user?.roleName);
    switch (user?.roleName) {
      case 'System Administrator':
        print('admin');
        return emit(RootPageState.success(Roles.admin));
      case 'Company Representative':
        print('representative');

        return emit(RootPageState.success(Roles.representative));

      case 'Customer':
        print('customer');

        return emit(RootPageState.success(Roles.customer));
      case 'Company Employee':
        print('employee');

        return emit(RootPageState.success(Roles.employee));
      case 'Company Manager':
        print('manager');

        return emit(RootPageState.success(Roles.manager));
      default:
        print('default');

        return emit(RootPageState.success(Roles.customer));
    }
  }
}
