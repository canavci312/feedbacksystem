import 'package:feedbacksystem/admin_feedback_list/view/admin_feedback_list_page.dart';
import 'package:feedbacksystem/admin_settings/view/admin_settings_page.dart';
import 'package:feedbacksystem/customer_feedbacks/view/customer_feedback_view.dart';
import 'package:feedbacksystem/user_profile/view/user_profile_page.dart';
import 'package:flutter/cupertino.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
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
                return AdminFeedbackListPage();
              case 1:
                return AdminSettingsPage();
              case 2:
                return UserProfilePage();
              default:
                return AdminFeedbackListPage();
            }
          },
        );
      },
    );
  }
}
