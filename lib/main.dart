// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:myapp/app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeState()),
        ChangeNotifierProvider(create: (_) => CounterState()),
      ],
      child: const NavigationBarApp(),
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
