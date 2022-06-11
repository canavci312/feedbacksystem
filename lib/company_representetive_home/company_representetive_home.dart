import 'package:feedbacksystem/company_representative_users/view/company_representative_users_page.dart';
import 'package:feedbacksystem/employee_feedback/view/employee_feedback_page.dart';
import 'package:feedbacksystem/products/view/products_page.dart';
import 'package:feedbacksystem/user_profile/view/user_profile_page.dart';
import 'package:flutter/cupertino.dart';

class CompanyRepresentetiveHome extends StatelessWidget {
  int currentIndex;
  CompanyRepresentetiveHome({this.currentIndex = 0, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_3),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_bullet),
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
              case 1:
                return const CompanyRepresentativeUsersPage();
              case 2:
                return const ProductsPage();
              case 3:
                return const UserProfilePage();

              default:
                return const EmployeeFeedbackPage();
            }
          },
        );
      },
    );
  }
}
