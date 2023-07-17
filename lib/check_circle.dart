import 'package:flutter/material.dart';
import 'package:flutter_application_2/consts.dart';

class CheckCircle extends StatefulWidget {
  const CheckCircle({Key? key}) : super(key: key);

  @override
  State<CheckCircle> createState() => _CheckCircleState();
}

class _CheckCircleState extends State<CheckCircle> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: border, width: 1.5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 2.9,
          heightFactor: 2.2,
          child: Ink(
            decoration: ShapeDecoration(
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(
                isChecked
                    ? Icons.check_circle
                    : Icons.do_not_disturb_on_rounded,
                size: 32,
                color: isChecked ? checked : notChecked,
              ),
              onPressed: () {
                setState(() {
                  isChecked = !isChecked;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
