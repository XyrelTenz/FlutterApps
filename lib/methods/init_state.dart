import "package:flutter/material.dart";

class TextState extends StatefulWidget {
  const TextState({super.key});

  @override
  State<TextState> createState() => _TextStates();
}

class _TextStates extends State<TextState> {
  late String message;

  @override
  void initState() {
    super.initState();
    message = "Xyrel";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(message)));
  }
}
