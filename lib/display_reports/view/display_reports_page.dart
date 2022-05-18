import 'package:feedbacksystem/display_reports/cubit/display_reports_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayReportsPage extends StatelessWidget {
  const DisplayReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DisplayReportsCubit(),
      child: DisplayReportsView(),
    );
  }
}

class DisplayReportsView extends StatelessWidget {
  const DisplayReportsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
