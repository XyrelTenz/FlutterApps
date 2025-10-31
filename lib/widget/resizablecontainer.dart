import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:flutter/material.dart";

class ResizeableContainer extends StatefulWidget {
  const ResizeableContainer({super.key});

  @override
  State<ResizeableContainer> createState() => _ResizeableContainerState();
}

class _ResizeableContainerState extends State<ResizeableContainer> {
  double height = 200;
  final double minHeight = 100;
  final double maxHeight = 500;

  void resizeableContainer(details) {
    setState(() {
      height -= details.delta.dy;
      height = height.clamp(minHeight, maxHeight);
    });
  }

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

  int currentIndex = 0;

  void navbarMethod(value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Stack(
          children: [
            const Center(child: Text("Home")),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    height: height,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onVerticalDragUpdate: resizeableContainer,
                          onDoubleTap: () => isClosed ? open() : close(),
                          child: Container(
                            padding: EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            height: 20,
                            child: Container(
                              height: 5,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CurvedNavigationBar(
                                index: currentIndex,
                                onTap: navbarMethod,
                                backgroundColor: Colors.transparent,
                                buttonBackgroundColor: Colors.orange[100],
                                animationDuration: Duration(milliseconds: 400),
                                items: [
                                  Icon(Icons.home_work),
                                  Icon(Icons.search),
                                  Icon(Icons.people),
                                  Icon(Icons.settings),
                                ],
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
