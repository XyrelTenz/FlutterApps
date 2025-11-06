import "package:flutter/material.dart";

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flexible(
          child: Container(height: 200, width: 100, color: Colors.black),
        ),
      ),
    );
  }
}
