import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class User extends ConsumerStatefulWidget {
  const User({super.key});

  @override
  ConsumerState<User> createState() => _UserState();
}

class _UserState extends ConsumerState<User> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Hello World")));
  }
}
