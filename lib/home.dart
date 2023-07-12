import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/consts.dart';

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
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.white,
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
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 20,
      ),
      alignment: Alignment.center,
      child: Container(
        // Password textfield
        child: Container(
          alignment: Alignment.center,
          height: 400,
          width: 400,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 80),
                    backgroundColor: violat // Background color

                    ),
                onPressed: () {
                  // TODO: Add button 1 logic
                },
                child: Text('Medicine'),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 80),
                    backgroundColor: lightCyan // Background color

                    // backgroundColor: Colors.cyan // Background color
                    ),
                onPressed: () {
                  // TODO: Add button 2 logic
                },
                child: Text('Side Effects'),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 80),
                    backgroundColor: lightOrange // Background color

                    // backgroundColor: Colors.cyan // Background color
                    ),
                onPressed: () {
                  // TODO: Add button 3 logic
                },
                child: Text('Contact Us'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileTab() {
    return Center(
      child: Text('Profile'),
    );
  }
}
