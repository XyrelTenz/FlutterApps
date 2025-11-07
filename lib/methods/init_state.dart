import "package:flutter/material.dart";

class TextState extends StatefulWidget {
  const TextState({super.key});

  @override
  State<TextState> createState() => _TextStates();
}

class _TextStates extends State<TextState> {
  late int count;

  @override
  // Run only Once and need to Hot Reload
  void initState() {
    super.initState();
    count = 0;
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(count.toString()),

            ElevatedButton(onPressed: increment, child: Text("Increments")),
            ElevatedButton(onPressed: decrement, child: Text("Decrement")),
          ],
        ),
      ),
    );
  }
}
