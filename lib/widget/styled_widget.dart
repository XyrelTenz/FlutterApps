import "package:flutter/material.dart";
import 'package:styled_widget/styled_widget.dart';

class StyledWidget extends StatelessWidget {
  const StyledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello",
        ).fontSize(20).fontWeight(FontWeight.bold).textColor(Colors.yellow),
      ),
    );
  }
}
