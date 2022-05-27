import 'package:feedbacksystem/guest_feedback_list/view/guest_feedback_view.dart';
import 'package:feedbacksystem/user_profile/view/user_profile_page.dart';
import 'package:flutter/cupertino.dart';

class GuestHome extends StatelessWidget {
  const GuestHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
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
                return const GuestFeedbackPage();

              case 1:
                return const UserProfilePage();
              default:
                return const GuestFeedbackPage();
            }
          },
        );
      },
    );
  }
}
