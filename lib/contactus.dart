import 'package:flutter/material.dart';
import 'package:flutter_application_2/custom_app_bar.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/consts.dart';
import 'package:flutter_application_2/medicine.dart';
import 'package:flutter_application_2/side_effect.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  var uploadedImage;
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildCustomAppBar('Contact Us'),
      body: Container(
        child: Column(children: [
          Container(
            child: Row(children: [
              SizedBox(width: 10),
              SizedBox(width: 5),
            ]),
          ),
          SizedBox(height: 30),
          texterrr(
            nameController,
            "Name",
            "Enter your name",
            Icons.person,
          ),
          texterrr(
            nameController,
            "Email",
            "Enter your Email",
            Icons.email,
          ),
          DropdownButtonExample(
            itemList: ['Reservation', 'Complian'],
            messageType: "Message Type",
          ),
          texterrr(
            nameController,
            "Message",
            "Enter your message",
            Icons.message,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 30),
              Text(
                "upload photo",
                style: TextStyle(
                  color: deepBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // Button style configuration
                    ),
                onPressed: () async {
                  PermissionStatus status = await Permission.camera.request();
                  if (status.isGranted) {
                    uploadedImage = await FilePicker.platform.pickFiles();
                  }
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.upload_file,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Upload",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 120),
          button("Send"),
        ]),
      ),
    );
  }
}

Widget texterrr(
  TextEditingController nameController,
  String name,
  String hintText,
  IconData iconData,
) {
  const TextStyle nameTextStyle = TextStyle(
    color: deepBlue,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  return Container(
    width: 340,
    height: 100,
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(width: 8),
            Text(
              name,
              style: nameTextStyle,
            ),
          ],
        ),
        SizedBox(height: 5),
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 12.0,
            ),
            filled: true,
            fillColor: dropDownColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(
                color: dropDownColor,
              ),
            ),
            prefixIcon: Icon(
              iconData,
              color: Colors.grey,
              size: 20,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    ),
  );
}
