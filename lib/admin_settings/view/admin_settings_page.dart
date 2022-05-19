import 'package:feedbacksystem/admin_settings/cubit/admin_settings_cubit.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:system_repository/system_repository.dart';

class AdminSettingsPage extends StatelessWidget {
  const AdminSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AdminSettingsCubit(getIt<SystemRepository>())..getCurrentSystemMode(),
      child: AdminSettingView(),
    );
  }
}

class AdminSettingView extends StatelessWidget {
  const AdminSettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AdminSettingsCubit>();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Sistem Ayarları'),
      ),
      child: Material(
        child: BlocBuilder<AdminSettingsCubit, AdminSettingsState>(
          builder: (context, state) {
            return state.when(
              initial: (() => SizedBox()),
              loading: () => CircularProgressIndicator(),
              success: (mode) => ListView(
                children: [
                  ListTile(
                    leading: mode == 1 ? Icon(Icons.check) : SizedBox(),
                    onTap: () => cubit.setModeOfOperation(1),
                    title: Text('Fonksiyonel Mod'),
                    trailing: Icon(Icons.keyboard_arrow_right_sharp),
                  ),
                  ListTile(
                    leading: mode == 2 ? Icon(Icons.check) : SizedBox(),
                    onTap: () => cubit.setModeOfOperation(2),
                    title: Text('Kısıtlı Erişim'),
                    trailing: Icon(Icons.keyboard_arrow_right_sharp),
                  ),
                  ListTile(
                    leading: mode == 3 ? Icon(Icons.check) : SizedBox(),
                    onTap: () => cubit.setModeOfOperation(3),
                    title: Text('Bakım Modu'),
                    trailing: Icon(Icons.keyboard_arrow_right_sharp),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
