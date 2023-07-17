import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:flutter_application_2/consts.dart';
import 'package:flutter_application_2/info.dart';
import 'package:flutter_application_2/medicine.dart';
import 'package:flutter_application_2/contactus.dart';
import 'package:flutter_application_2/protocol_schedule.dart';
import 'package:flutter_application_2/side_effect.dart';
import 'package:flutter_application_2/side_effect_history.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: primaryBackGround,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: primaryBackGround,
        currentIndex: currentIndex,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        Widget? body;
        switch (index) {
          case 0:
            body = buildHomeTab();
            break;
          case 1:
            body = buildProfileTab();

            break;
        }
        return Scaffold(
          body: body,
        );
      },
    );
  }

  Widget buildHomeTab() {
    return Container(
      color: primaryBackGround,
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 20,
      ),
      alignment: Alignment.center,
      child: Container(
        child: Column(children: [
          const SizedBox(
            height: 90,
          ),
          const Row(children: [
            Text(
              "Hi Ali !",
              style: TextStyle(
                color: textColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),

          const SizedBox(
            height: 80,
          ),
          // Password textfield
          Container(
            alignment: Alignment.center,
            color: primaryBackGround,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(300, 80), backgroundColor: violat),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Medicine()),
                        //  MaterialPageRoute(builder: (context) => Tester()),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.medication_liquid,
                          color: textColor,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Medicine',
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.arrow_right_alt_rounded,
                          color: textColor,
                          size: 40,
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 80), backgroundColor: lightCyan),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Side_Effect()),
                      //  MaterialPageRoute(builder: (context) => Tester()),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.medical_services_sharp,
                        color: textColor,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Side Effects',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 40),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: textColor,
                        size: 40,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 80), backgroundColor: lightOrange),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactUs()),
                      //  MaterialPageRoute(builder: (context) => Tester()),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: textColor,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Contact Us',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 40),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: textColor,
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildProfileTab() {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: primaryBackGround,
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 80),
                backgroundColor: violat,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoPage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.medication_liquid,
                    color: textColor,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Info',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.arrow_right_alt_rounded,
                    color: textColor,
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 80),
                backgroundColor: lightCyan,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProtocolSchedule()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.medical_services_sharp,
                    color: textColor,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Protocol Schedule',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.arrow_right_alt_rounded,
                    color: textColor,
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 80),
                backgroundColor: lightOrange,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SideEffectHistory()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    color: textColor,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Side Effects history',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.arrow_right_alt_rounded,
                    color: textColor,
                    size: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
