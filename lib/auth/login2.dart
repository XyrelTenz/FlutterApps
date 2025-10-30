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
            child: Stack(
              children: <Widget>[
                // Background image
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.blue, // Placeholder for an image
                  child: Center(
                    child: Text(
                      'Background Image',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // Text overlaid on the image
                Positioned(
                  bottom: 85,
                  left: 40,
                  child: Text(
                    'Overlay Text',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                // Button overlaid on top
                Positioned(
                  top: 10,
                  right: 10,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Action'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
