import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String text1 = "Sign up";
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 20,
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            // Welcome message
            const Text(
              "Welcome back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            // Email textfield
            Container(
              height: 70,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "E-mail",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  TextField(
                    controller: emailController,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // Password textfield
            Container(
              height: 70,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Paswword",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  TextField(
                    controller: passController,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            // Forgot password button
            TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot your password?",
              ),
            ),

            const Expanded(child: SizedBox()),

            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Container(
              height: 80,
              child: Column(
                children: [
                  const Divider(
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account yet?",
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          text1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
