import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),
      body: Column(
        children: <Widget>[
          const Count(),
          const ThemeStatus(),
          ElevatedButton(
            onPressed: () {
              context.read<ThemeState>().toggleTheme();
            },
            child: const Text('Toggle Theme'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CounterState>().increment();
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}

class ThemeStatus extends StatelessWidget {
  const ThemeStatus({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (context.watch<ThemeState>().isDarkMode == true) {
      return Text('DARK');
    } else {
      return Text('LIGHT');
    }
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<CounterState>().count}',
      key: const Key('counterState'),
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
