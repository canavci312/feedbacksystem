import 'package:feedbacksystem/customer_feedback_track/view/customer_feedback_track_page.dart';
import 'package:feedbacksystem/customer_feedbacks/view/customer_feedback_view.dart';
import 'package:feedbacksystem/user_profile/view/user_profile_page.dart';
import 'package:flutter/cupertino.dart';

class CustomerHome extends StatelessWidget {
  const CustomerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
          ),
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
                return CustomerFeedbackPage();
              case 1:
                return CustomerFeedbackTrackPage();
              case 2:
                return UserProfilePage();
              default:
                return CustomerFeedbackPage();
            }
          },
        );
      },
    );
  }
}
