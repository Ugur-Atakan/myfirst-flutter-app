import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:provider/provider.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      key: const Key('increment_floatingActionButton'),
      tooltip: 'Increment',
      onPressed: () => context.read<CounterState>().increment(),
      child: const Icon(Icons.add),
    );
  }
}

class DecrementButton extends StatelessWidget {
  const DecrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      key: const Key('decrement_floatingActionButton'),
      tooltip: 'Decrement',
      onPressed: () => context.read<CounterState>().decrement(),
      child: const Icon(Icons.remove),
    );
  }
}

class ResetButton extends StatelessWidget {
  const ResetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        key: const Key('reset_floatingActionButton'),
        tooltip: 'Reset',
        onPressed: () => context.read<CounterState>().reset(),
        child: const Icon(Icons.restore));
  }
}
