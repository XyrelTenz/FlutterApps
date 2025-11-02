import "package:flutter/material.dart";

class SilverAppbar extends StatefulWidget {
  const SilverAppbar({super.key});
  @override
  State<SilverAppbar> createState() => _SilverAppbarState();
}

class _SilverAppbarState extends State<SilverAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // 👇 Custom behavior header
          SliverPersistentHeader(
            pinned: true,
            delegate: MyHeaderDelegate(minHeight: 70, maxHeight: 200),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Item #$index')),
              childCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;

  MyHeaderDelegate({required this.minHeight, required this.maxHeight});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    // How far we've scrolled (0.0 - 1.0)
    final progress = (shrinkOffset / (maxExtent - minExtent)).clamp(0.0, 1.0);

    final curvedProgress = Curves.easeOut.transform(progress);
    final fontSize = 32 - (curvedProgress * 12); // from 32 → 20
    final opacity = 1 - curvedProgress; // fade out gradually

    return Container(
      color: Colors.blueAccent,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Opacity(
                opacity: opacity,
                child: Text(
                  'Dynamic Header',
                  style: TextStyle(
                    fontSize: fontSize,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => maxHeight;
  @override
  double get minExtent => minHeight;
  @override
  bool shouldRebuild(MyHeaderDelegate oldDelegate) => true;
}
