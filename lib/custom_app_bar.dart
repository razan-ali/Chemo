import 'package:flutter/material.dart';

import 'package:flutter_application_2/consts.dart';

AppBar buildCustomAppBar(String title) {
  return AppBar(
    iconTheme: IconThemeData(
      color: purble,
    ),
    title: Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}
