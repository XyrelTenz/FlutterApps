import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../bloc/counter_bloc.dart";
import "../bloc/providers/counter_provider.dart";

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(title: const Text('BLoC Counter')),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(
              '${state.count}',
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'dec',
            onPressed: () => counterBloc.add(Decrement()),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 12),
          FloatingActionButton(
            heroTag: 'inc',
            onPressed: () => counterBloc.add(Increment()),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
