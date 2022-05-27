import 'package:auth_repository/auth_repository.dart';
import 'package:feedbacksystem/admin_home/admin_home.dart';
import 'package:feedbacksystem/company_manager_home/view/company_manager_home.dart';
import 'package:feedbacksystem/company_representetive_home/company_representetive_home.dart';
import 'package:feedbacksystem/customer_home/view/customer_home.dart';
import 'package:feedbacksystem/employee_home/view/employee_home.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:feedbacksystem/login/login_page.dart';
import 'package:feedbacksystem/root_page/cubit/root_page_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootPageCubit(getIt<AuthRepository>())..checkUser(),
      child: RootView(),
    );
  }
}

class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootPageCubit, RootPageState>(
      builder: (context, state) {
        return state.when(
            initial: () => Container(
                  color: Colors.white,
                ),
            unauth: () => LoginPage(),
            success: (role) {
              switch (role) {
                case Roles.admin:
                  return const AdminHome();
                case Roles.customer:
                  return const CustomerHome();
                case Roles.representative:
                  return const CompanyRepresentetiveHome();
                case Roles.employee:
                  return const EmployeeHome();
                case Roles.manager:
                  return const CompanyManagerHome();
                default:
                  return const CustomerHome();
              }
            });
      },
    );
  }
}
