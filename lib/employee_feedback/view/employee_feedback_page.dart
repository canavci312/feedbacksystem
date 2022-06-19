import 'package:auth_repository/auth_repository.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/company_filter_feedbacks/model/feedback_filter_model.dart';
import 'package:feedbacksystem/company_filter_feedbacks/view/company_filter_feedbacks.dart';
import 'package:feedbacksystem/company_representetive_feedback_details/view/company_representetive_feedback_details_page.dart';
import 'package:feedbacksystem/customer_feedback_details/view/customer_feedback_details_page.dart';
import 'package:feedbacksystem/employee_feedback/cubit/employeefeedback_cubit.dart';
import 'package:feedbacksystem/employee_feedback_details/view/employee_feedback_details_page.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:feedbacksystem/root_page/cubit/root_page_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';

class EmployeeFeedbackPage extends StatelessWidget {
  const EmployeeFeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmployeeFeedbackCubit(
          getIt<FeedbackRepository>(), getIt<AuthRepository>())
        ..getFeedbackList(),
      child: EmployeeFeedbackView(),
    );
  }
}

class EmployeeFeedbackView extends StatefulWidget {
  EmployeeFeedbackView({Key? key}) : super(key: key);

  @override
  State<EmployeeFeedbackView> createState() => _EmployeeFeedbackViewState();
}

class _EmployeeFeedbackViewState extends State<EmployeeFeedbackView> {
  TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  CompanyFeedbackFilterModel? model;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: GestureDetector(
            onTap: (() =>
                context.read<EmployeeFeedbackCubit>().getFeedbackList()),
            child: const Icon(Icons.refresh)),
        middle: const Text('Geribildirimler'),
      ),
      child: Column(children: [
        const SizedBox(
          height: 60,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).viewPadding.top, bottom: 8),
                child: CupertinoSearchTextField(
                  placeholder: 'Geribildirim Ara',
                  controller: controller,
                  onChanged: (String value) {
                    context
                        .read<EmployeeFeedbackCubit>()
                        .searchFeedbacks(value);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                  onTap: () async {
                    model =
                        await showCupertinoDialog<CompanyFeedbackFilterModel?>(
                            barrierDismissible: true,
                            context: context,
                            builder: (BuildContext context) =>
                                CompanyFilterFeedbacksDialog());
                    context.read<EmployeeFeedbackCubit>().applyFilter(model);
                  },
                  child: Icon(Icons.filter_alt)),
            )
          ],
        ),
        BlocBuilder<EmployeeFeedbackCubit, EmployeeFeedbackState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const CircularProgressIndicator(),
              success: (list, filteredList, role) => filteredList.isNotEmpty
                  ? Expanded(
                      child: Material(
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemCount: filteredList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CompanyFeedbackListTile(filteredList[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider(
                              color: Colors.grey,
                            );
                          },
                        ),
                      ),
                    )
                  : Expanded(
                      child: Material(
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemCount: list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CompanyFeedbackListTile(list[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider(
                              color: Colors.grey,
                            );
                          },
                        ),
                      ),
                    ),
            );
          },
        ),
        SizedBox(
          height: 70,
        )
      ]),
    );
  }
}

class CompanyFeedbackListTile extends StatelessWidget {
  const CompanyFeedbackListTile(
    this.item, {
    Key? key,
  }) : super(key: key);
  final CompanyFeedbackList item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        context.read<EmployeeFeedbackCubit>().state.whenOrNull(
          success: (list, filteredList, roleName) {
            if (roleName == 'Company Representative') {
              return Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) =>
                      CompanyRepresentativeFeedbackDetailsPage(item)));
            } else {
              return Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => EmployeeFeedbackDetailsPage(item)));
            }
          },
        );
      }),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      item.customerFirstName ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      CupertinoIcons.arrow_turn_down_right,
                      color: Colors.blueGrey,
                    ),
                    Text(
                      item.companyName ?? '',
                      style: const TextStyle(color: Colors.deepPurple),
                    ),
                    Visibility(
                      visible: item.isSolved ?? false,
                      child: const Icon(
                        CupertinoIcons.checkmark_alt_circle,
                        color: Colors.deepPurple,
                      ),
                    )
                  ],
                ),
                Text(
                  item.title ?? '',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
