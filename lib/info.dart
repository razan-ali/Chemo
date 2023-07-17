import 'package:flutter/material.dart';
import 'package:flutter_application_2/consts.dart';

import 'custom_app_bar.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height * 0.10;
    final width = screenSize.width * 0.3;

    return Scaffold(
      appBar: buildCustomAppBar('Info'),
      body: Column(
        children: [
          buildContainer('+42 564 342 786', Icons.phone_android_outlined),
          buildContainer('contact@onelook.com', Icons.email_outlined),
          buildContainer('Jeddah', Icons.location_on_outlined),
        ],
      ),
    );
  }
}

Container buildContainer(String text, IconData iconData) {
  return Container(
    margin: EdgeInsets.only(left: 50, bottom: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 30.0,
          spreadRadius: -20.0,
          offset: Offset(1, 2),
        ),
      ],
    ),
    child: Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Icon(
          iconData,
          color: border,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            text,
            style: TextStyle(
              color: textColor2,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        )
      ],
    ),
  );
}
