import "package:flutter/material.dart";

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue[100],
                child: Row(children: [Text("Hello")]),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red[100],
                child: Row(children: [Text("Expaned 2")]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
