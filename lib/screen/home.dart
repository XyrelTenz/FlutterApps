import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height * 1,
            color: Colors.yellow,
            child: Row(children: [Text("Hellow")]),
          ),
        ),
      ),
    );
  }
}
