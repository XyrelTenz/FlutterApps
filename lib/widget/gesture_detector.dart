import "package:flutter/material.dart";

class GestureDetectors extends StatefulWidget {
  const GestureDetectors({super.key});

  @override
  State<GestureDetectors> createState() => _GestureDetectorState();
}

class _GestureDetectorState extends State<GestureDetectors> {
  double height = 100;
  final double minHeight = 100;
  final double maxHeight = 500;
  bool isClosed = false;

  void close() {
    setState(() {
      height = 100;
      isClosed = true;
    });
  }

  void open() {
    setState(() {
      height = 500;
      isClosed = false;
    });
  }

  void gestureDetector(details) {
    setState(() {
      height -= details.delta.dy;
      height = height.clamp(minHeight, maxHeight);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(child: Text("Gesture Detector")),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                    ),
                    curve: Curves.ease,
                    height: height,
                    width: double.infinity,
                    child: Column(
                      children: [
                        GestureDetector(
                          onVerticalDragUpdate: gestureDetector,
                          behavior: HitTestBehavior.translucent,
                          onTap: () => isClosed ? open() : close(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                alignment: Alignment.center,
                                child: Container(
                                  height: 5,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
