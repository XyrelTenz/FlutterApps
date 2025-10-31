import "package:flutter/material.dart";

class Instgram extends StatefulWidget {
  const Instgram({super.key});

  @override
  State<Instgram> createState() => _InstagramState();
}

class _InstagramState extends State<Instgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios_new)),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: Center(child: Text("Instagram")),
            ),
          ),
        ],
      ),
    );
  }
}
