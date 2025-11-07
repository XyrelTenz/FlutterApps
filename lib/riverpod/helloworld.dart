import "package:flutter_riverpod/flutter_riverpod.dart";

import "./provider/helloworld_provider.dart";
import "package:flutter/material.dart";

class HelloWorldView extends ConsumerStatefulWidget {
  const HelloWorldView({super.key});

  @override
  ConsumerState<HelloWorldView> createState() => _HelloWorldViewState();
}

class _HelloWorldViewState extends ConsumerState<HelloWorldView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final helloWorld = ref.read(helloWorldProvider);
    return Scaffold(body: Center(child: Text(helloWorld)));
  }
}
