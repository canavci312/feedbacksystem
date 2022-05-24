import 'package:feedbacksystem/employee_report/cubit/employee_report_cubit.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeReportPage extends StatelessWidget {
  const EmployeeReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmployeeReportCubit(getIt())..fetchEmployeeReport(),
      child: EmployeeReportView(),
    );
  }
}

class EmployeeReportView extends StatelessWidget {
  const EmployeeReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Çalışanlar'),
      ),
      child: BlocBuilder<EmployeeReportCubit, EmployeeReportState>(
        builder: (context, state) {
          return state.when(
            initial: () => SizedBox(),
            loading: () => CircularProgressIndicator(),
            success: (report) => Material(
              child: ListView.builder(
                itemCount: report.data?.employeeReports?.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                        report.data?.employeeReports?[index].employeeName ??
                            ''),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Yönlendirilen geribildirimler: ${report.data?.employeeReports?[index].totalDirectedFeedbackCount.toString()}'),
                        Text(
                            'Cevaplanan geribildirimler: ${report.data?.employeeReports?[index].repliedFeedbackCount.toString()}'),
                        Text(
                            'Çözülen geribildirimler: ${report.data?.employeeReports?[index].solvedFeedbackCount.toString()}'),
                        Text(
                            'Arşivlenen geribildirimler: ${report.data?.employeeReports?[index].archivedFeedbackCount.toString()}'),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
