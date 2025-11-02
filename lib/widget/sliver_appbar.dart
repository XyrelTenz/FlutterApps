import "package:flutter/material.dart";

class SilverAppbar extends StatefulWidget {
  const SilverAppbar({super.key});
  @override
  State<SilverAppbar> createState() => _SilverAppbarState();
}

class _SilverAppbarState extends State<SilverAppbar> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Icon(Icons.menu),
              pinned: true,
              floating: false,
              elevation: 0,
              expandedHeight: 200.0,
              backgroundColor: Colors.purple[600],
              // flexibleSpace: FlexibleSpaceBar(title: const Text("Title")),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                  leading: CircleAvatar(child: Text("${index + 1}")),
                  title: Text("Item ${index + 1}"),
                ),
                childCount: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
