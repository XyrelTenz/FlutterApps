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
    return Scaffold(body: Center(child: Text("Test")));
  }
}
