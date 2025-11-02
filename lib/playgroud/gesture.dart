import "package:flutter/material.dart";

class GesturePractice extends StatefulWidget {
  const GesturePractice({super.key});

  @override
  State<GesturePractice> createState() => _GesturePracticeState();
}

class _GesturePracticeState extends State<GesturePractice> {
  double height = 200;
  double minHeight = 200;
  double maxHeight = 500;

  void gestureDetector(detail) {
    setState(() {
      height -= detail.delta.dy;
      height = height.clamp(minHeight, maxHeight);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF313131),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  GestureDetector(
                    onVerticalDragUpdate: gestureDetector,
                    behavior: HitTestBehavior.translucent,
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      color: Colors.transparent,
                      child: Container(
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
