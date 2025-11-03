import 'package:flutter/material.dart';

class GridList extends StatefulWidget {
  const GridList({super.key});

  @override
  State<GridList> createState() => _GridListState();
}

class _GridListState extends State<GridList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SafeArea(
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 2, // 2 items per row
          padding: EdgeInsets.all(8),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: List.generate(20, (index) {
            return Container(
              color: Colors.blue[100],
              height: 100,
              child: Center(
                child: Text(
                  "Item ${index + 1}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
