import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/customer_feedback_details/view/customer_feedback_details_page.dart';
import 'package:feedbacksystem/employee_feedback/cubit/employeefeedback_cubit.dart';
import 'package:feedbacksystem/employee_feedback_details/view/employee_feedback_details_page.dart';
import 'package:feedbacksystem/locator.dart';
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
      create: (context) =>
          EmployeeFeedbackCubit(getIt<FeedbackRepository>())..getFeedbackList(),
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

  bool isAnswered = false;
  bool notAnswered = false;
  bool notSolved = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: const Text('Geribildirimler'),
      ),
      child: Column(children: [
        const SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoSearchTextField(
            placeholder: 'Geribildirim Ara',
            controller: controller,
            onChanged: (String value) {
              context.read<EmployeeFeedbackCubit>().searchFeedbacks(value);
            },
          ),
        ),
        Material(
          child: SizedBox(
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FilterChip(
                  label: Text('Cevaplanan'),
                  onSelected: (isSelected) {
                    isAnswered = isSelected;
                    setState(() {});
                    context
                        .read<EmployeeFeedbackCubit>()
                        .filterIsAnswered(true);
                  },
                  selected: isAnswered,
                ),
                FilterChip(
                  label: Text('Cevaplanmamış'),
                  onSelected: (isSelected) {
                    notAnswered = isSelected;
                    setState(() {});
                  },
                  selected: notAnswered,
                ),
                FilterChip(
                  label: Text('Çözülmemiş'),
                  onSelected: (isSelected) {
                    notSolved = isSelected;
                    setState(() {});
                  },
                  selected: notSolved,
                ),
              ],
            ),
          ),
        ),
        BlocBuilder<EmployeeFeedbackCubit, EmployeeFeedbackState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const CircularProgressIndicator(),
              success: (list, filteredList) => controller.text.length > 2
                  ? Expanded(
                      child: Material(
                        child: ListView.separated(
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
      onTap: (() => Navigator.of(context).push(
            CupertinoPageRoute(
                builder: (context) => EmployeeFeedbackDetailsPage(item)),
          )),
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
