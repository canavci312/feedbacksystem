import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/direct_feedback/cubit/direct_feedback_cubit.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class DirectFeedbackDialogPage extends StatelessWidget {
  final int feedbackId;
  const DirectFeedbackDialogPage(this.feedbackId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DirectFeedbackCubit(
          getIt<UserRepository>(), getIt<FeedbackRepository>(), this.feedbackId)
        ..fetchEmployees(),
      child: DirectFeedbackDialog(),
    );
  }
}

class DirectFeedbackDialog extends StatelessWidget {
  const DirectFeedbackDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DirectFeedbackCubit, DirectFeedbackState>(
      builder: (context, state) {
        return state.when(
            initial: (() => SizedBox()),
            loading: () => CircularProgressIndicator.adaptive(),
            success: (list) => AlertDialog(
                  title: const Text('Geribildirimi Yönlendir'),
                  content: Material(
                    child: SizedBox(
                      height: 500,
                      width: 300,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return Divider();
                        },
                        shrinkWrap: true,
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            onTap: () {
                              context
                                  .read<DirectFeedbackCubit>()
                                  .directFeedback(list[index].id ?? 0);
                            },
                            trailing: Icon(CupertinoIcons.forward),
                            title: Text(list[index].firstName! +
                                ' ' +
                                list[index].lastName!),
                            subtitle: Text(list[index].roleName!),
                          );
                        },
                      ),
                    ),
                  ),
                ));
      },
    );
  }
}
