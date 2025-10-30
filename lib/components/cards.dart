import "package:flutter/material.dart";

class Cards extends StatelessWidget {
  const Cards({super.key, required this.cards});

  final String cards;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 10),
      child: Container(
        height: 200,
        color: Colors.green[200],
        child: Center(child: Text(cards, style: TextStyle(fontSize: 40))),
      ),
    );
  }
}
