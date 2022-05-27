import 'package:flutter/material.dart';

import '../../../guest_feedback_details/cubit/guest_feedback_details_cubit.dart';

class CustomStepper extends StatelessWidget {
  FeedbackStatus status;
  CustomStepper(this.status, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _TickCircle(),
                _Divisor(),
                status == FeedbackStatus.answered ||
                        status == FeedbackStatus.solved
                    ? _TickCircle()
                    : _GreyCircle(),
                _Divisor(),
                status == FeedbackStatus.solved ? _TickCircle() : _GreyCircle()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Yayında'),
                Text('Cevaplandı'),
                Text('Çözüldü'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _TickCircle extends StatelessWidget {
  const _TickCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
      child: Icon(
        Icons.check,
        color: Colors.white,
      ),
    );
  }
}

class _GreyCircle extends StatelessWidget {
  const _GreyCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
    );
  }
}

class _Divisor extends StatelessWidget {
  const _Divisor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 4,
      width: MediaQuery.of(context).size.width * 0.28,
    );
  }
}
