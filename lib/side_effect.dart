import 'package:flutter/material.dart';
import 'package:flutter_application_2/custom_app_bar.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/tester.dart';
import 'package:flutter_application_2/contactus.dart';
import 'package:flutter_application_2/medicine.dart';

import 'package:flutter_application_2/consts.dart';

class Side_Effect extends StatefulWidget {
  const Side_Effect({super.key});

  @override
  State<Side_Effect> createState() => _Side_EffectState();
}

class _Side_EffectState extends State<Side_Effect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildCustomAppBar('Side Effects'),
      body: Container(
        child: Column(children: [
          Container(
            child: Row(children: [
              SizedBox(width: 10),
              SizedBox(width: 5),
            ]),
          ),
          Container(
            height: 550,
            child: Column(children: [
              SizedBox(width: 30),
              DropdownButtonExample(
                itemList: ["Item 1", "Item 2", "Item 3"],
                messageType: "Side Effect", // Set your custom message type here
              ),
              DropdownButtonExample(
                itemList: ["Item 1", "Item 2", "Item 3"],
                messageType: "Degree", // Set your custom message type here
              ),
              Expanded(child: SizedBox()),
              button("Save"),
            ]),
          ),
        ]),
      ),
    );
  }
}

Widget button(String name) {
  const TextStyle nameTextStyle = TextStyle(
    color: deepBlue,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  return Container(
    width: 300,
    height: 50,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        primary: Colors.white, // Specify the button's background color
        side: BorderSide(color: purble, width: 1.0),
      ),
      onPressed: () {},
      child: Row(
        children: [
          SizedBox(width: 100),
          Text(
            name,
            style: TextStyle(
              color: purble,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 70),
          Icon(
            Icons.add_circle_outline_sharp,
            color: purble,
          ),
        ],
      ),
    ),
  );
}

class DropdownButtonExample extends StatefulWidget {
  final List<String> itemList;
  final String messageType; // Added messageType parameter

  const DropdownButtonExample({
    Key? key,
    required this.itemList,
    required this.messageType, // Added messageType parameter
  }) : super(key: key);

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = '';

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.itemList.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 12),
            Text(
              widget.messageType,
              style: TextStyle(
                color: deepBlue,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: dropDownColor,
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: textColor,
                  width: 1.0,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  DropdownButton<String>(
                    borderRadius: BorderRadius.circular(15.0),
                    dropdownColor: dropDownColor,
                    value: dropdownValue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    elevation: 16,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: widget.itemList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
