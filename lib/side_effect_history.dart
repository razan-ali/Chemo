import 'package:flutter/material.dart';
import 'package:flutter_application_2/check_circle.dart';
import 'package:flutter_application_2/custom_app_bar.dart';
import 'package:flutter_application_2/list_dehistory.dart';
import 'package:flutter_application_2/medicine.dart';
import 'package:flutter_application_2/side_effect.dart';

import 'calender.dart';
import 'consts.dart';

class SideEffectHistory extends StatefulWidget {
  const SideEffectHistory({Key? key}) : super(key: key);

  @override
  State<SideEffectHistory> createState() => _SideEffectHistoryState();
}

class _SideEffectHistoryState extends State<SideEffectHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar('Side Effect History'),
      body: Center(
        // Wrap the Column with Center
        child: list_dehistory(),
      ),
    );
  }
}
