// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:myapp/myhome_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeState()),
        ChangeNotifierProvider(create: (_) => CounterState()),
      ],
      child: const MyApp(),
    ),
  );
}

class ThemeState with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

class CounterState with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
    print('Counter arttı' + _count.toString());
  }

  void decrement() {
    if (count > 0) {
      _count--;
      notifyListeners();
      print('Counter azaldı' + _count.toString());
    } else {
      print('Sayı eksi olamaz');
    }
  }

  void reset() {
    _count = 0;
    print('Counter sıfırlandı' + _count.toString());
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: ThemeData.light().copyWith(
        // Varsayılan tema
        colorScheme: ThemeData.light()
            .colorScheme
            .copyWith(background: Color.fromARGB(255, 214, 199, 199)),
      ),
      darkTheme: ThemeData.dark().copyWith(
        // Koyu tema
        colorScheme: ThemeData.dark().colorScheme.copyWith(
              background: Colors.black,
            ),
      ),
      themeMode: Provider.of<ThemeState>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
    );
  }
}
