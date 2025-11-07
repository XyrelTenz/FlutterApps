import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "./provider/counter_provider.dart";

class CounterWidget extends ConsumerStatefulWidget {
  const CounterWidget({super.key});

  @override
  ConsumerState<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends ConsumerState<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    final counter = ref.watch(counterProvider);

    void increment() {
      ref.read(counterProvider.notifier).state++;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: ${counter.toString()}"),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: increment, child: Text("Increment")),
          ],
        ),
      ),
    );
  }
}
