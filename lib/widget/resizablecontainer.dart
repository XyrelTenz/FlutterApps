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
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: Stack(
          children: [
            const Center(child: Text("Data Here")),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: height,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    width: double.infinity,
                    child: Column(
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onVerticalDragUpdate: resizeableContainer,
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
                              BottomNavigationBar(
                                currentIndex: currentIndex,
                                onTap: navbarMethod,
                                backgroundColor: Colors.grey[100],
                                type: BottomNavigationBarType.fixed,
                                elevation: 0,
                                showSelectedLabels: false,
                                showUnselectedLabels: false,
                                items: const [
                                  BottomNavigationBarItem(
                                    icon: Icon(Icons.home),
                                    label: "Home",
                                  ),
                                  BottomNavigationBarItem(
                                    icon: Icon(Icons.search),
                                    label: "Search",
                                  ),
                                  BottomNavigationBarItem(
                                    icon: Icon(Icons.people),
                                    label: "User",
                                  ),
                                  BottomNavigationBarItem(
                                    icon: Icon(Icons.settings),
                                    label: "Settings",
                                  ),
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
