import 'package:flutter/material.dart';
import 'package:flutter_application_2/check_circle.dart';
import 'package:flutter_application_2/custom_app_bar.dart';
import 'package:flutter_application_2/medicine.dart';
import 'package:flutter_application_2/side_effect.dart';

import 'calender.dart';
import 'consts.dart';

class ProtocolSchedule extends StatefulWidget {
  const ProtocolSchedule({Key? key}) : super(key: key);

  @override
  State<ProtocolSchedule> createState() => _ProtocolScheduleState();
}

class _ProtocolScheduleState extends State<ProtocolSchedule> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width * 0.3;
    final screenHeight = screenSize.height * 0.15;

    return Scaffold(
      appBar: buildCustomAppBar(
          'Protocol Schedule'), // Added the 'context' parameter
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: CalendarWidget(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  SizedBox(
                      height: 70, width: 50), // Removed an extra parenthesis
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [SizedBox(width: 50), titleFormat('Attendance')],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        width: screenWidth,
                        child: Text(
                          "Attend",
                        ),
                      ),
                      SizedBox(width: 120),
                      const CheckCircle(),
                    ],
                  ),
                  SizedBox(height: 40),
                  button("save"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
