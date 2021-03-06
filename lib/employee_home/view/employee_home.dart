import 'package:feedbacksystem/customer_feedbacks/view/customer_feedback_view.dart';
import 'package:feedbacksystem/employee_feedback/view/employee_feedback_page.dart';
import 'package:feedbacksystem/user_profile/view/user_profile_page.dart';
import 'package:flutter/cupertino.dart';

class EmployeeHome extends StatelessWidget {
  const EmployeeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
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
                return EmployeeFeedbackPage();
              case 1:
                return UserProfilePage();

              default:
                return EmployeeFeedbackPage();
            }
          },
        );
      },
    );
  }
}
