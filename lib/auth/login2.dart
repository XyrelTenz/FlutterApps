import "package:flutter/material.dart";

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final usernameController = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Hello World")],
            ),
          ),
        ),
      ),
    );
  }
}
