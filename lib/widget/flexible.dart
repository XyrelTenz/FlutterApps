import "package:flutter/material.dart";

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(width: 100, height: 100, color: Colors.red),
            Expanded(child: Container(height: 100, color: Colors.blue)),
            Flexible(
              child: Container(
                width: 50, // tries to keep this width
                height: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
