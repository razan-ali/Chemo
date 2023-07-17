import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storage = FlutterSecureStorage();
    Future<bool> hasToken() async {
      bool token = await storage.containsKey(key: "token");
      String? temp = await storage.read(key: "token");
      print("the token : $temp");
      print("if its exists : $token");
      if (token == null) {
        print("here222");
        return false;
      } else {
        print("here33");
        return true;
      }
    }

    return FutureBuilder<bool>(
      future: hasToken(),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
        } else if (snapshot.hasData) {
          // Check the token value
          if (snapshot.data!) {
            print("here");
            return Login(storage: storage);
          } else {
            return Home();
          }
        }
        return Container();
      },
    );
  }
}
