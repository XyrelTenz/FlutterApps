import "package:flutter/material.dart";

class MovingBox extends StatefulWidget {
  const MovingBox({super.key});

  @override
  State<MovingBox> createState() => _MovingBoxState();
}

class _MovingBoxState extends State<MovingBox> {
  double x = 0;
  double y = 0;

  void movingBox() {
    setState(() {
      x = (x + 50) % 100;
      y = (y + 30) % 300;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: movingBox,
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: x,
                right: y,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow[500],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
