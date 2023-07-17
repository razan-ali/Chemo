import 'package:flutter/material.dart';
import 'package:flutter_application_2/item_list_view.dart';
import 'package:flutter_application_2/side_effect.dart';
import 'custom_app_bar.dart';
import 'package:flutter_application_2/item_list_view.dart';

class Medicine extends StatefulWidget {
  const Medicine({Key? key}) : super(key: key);

  @override
  State<Medicine> createState() => _MedicineState();
}

class _MedicineState extends State<Medicine> {
  final padding = 20.0;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      
      appBar: buildCustomAppBar("Medicine"),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: ItemListView(),
          ),
          SizedBox(
            height: 70,
          ),
          button("Save"),
        ],
      )),
    );
  }
}

//title format method
Text titleFormat(String title) {
  return Text(
    title,
    style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
    textAlign: TextAlign.center,
  );
}
