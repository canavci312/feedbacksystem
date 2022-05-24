import 'package:feedbacksystem/customer_feedbacks/view/customer_feedback_view.dart';
import 'package:feedbacksystem/customer_statistics/view/customer_statistics_page.dart';
import 'package:feedbacksystem/display_reports/view/fb_count_reports_page.dart';
import 'package:feedbacksystem/employee_feedback/view/employee_feedback_page.dart';
import 'package:feedbacksystem/employee_report/view/employee_report_page.dart';
import 'package:feedbacksystem/user_profile/view/user_profile_page.dart';
import 'package:flutter/cupertino.dart';

class CompanyManagerHome extends StatelessWidget {
  const CompanyManagerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_number),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.graph_square),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_3),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            switch (index) {
              case 0:
                return const EmployeeFeedbackPage();
              case 4:
                return const UserProfilePage();
              case 1:
                return const FeedbackCountReportsPage();
              case 2:
                return const CustomerStatisticsPage();
              case 3:
                return const EmployeeReportPage();
              default:
                return const EmployeeFeedbackPage();
            }
          },
        );
      },
    );
  }
}
