import "package:flutter/material.dart";

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  final _tabBar = 5;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabBar,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Facebook"),
          bottom: TabBar(
            tabs: <Widget>[Tab(icon: Icon(Icons.person_outline_outlined))],
          ),
        ),
      ),
    );
  }
}
