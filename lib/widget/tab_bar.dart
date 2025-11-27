import "package:flutter/material.dart";

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _Facebook();
}

class _Facebook extends State<TabBarWidget> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  final _tabBar = 5;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabBar,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Facebook"),
          bottom: TabBar(
            indicatorColor: Color(0xFF0046FF),
            labelColor: Color(0xFF0046FF),
            unselectedLabelColor: Color(0xFF313131),
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home_rounded)),
              Tab(icon: Icon(Icons.people_rounded)),
              Tab(icon: Icon(Icons.message_rounded)),
              Tab(icon: Icon(Icons.notifications_rounded)),
              Tab(icon: Icon(Icons.video_library_rounded)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            _tabBody(name: "Home"),
            _tabBody(name: "Friend"),
            _tabBody(name: "Messages"),
            _tabBody(name: "Notification"),
            _tabBody(name: "Watch"),
          ],
        ),
      ),
    );
  }
}

Widget _tabBody({required String name}) {
  return Center(
    child: Text(
      name,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );
}
