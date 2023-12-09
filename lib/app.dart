import 'package:flutter/material.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/notifications_page.dart';
import 'package:myapp/pages/profile_page.dart';
import 'package:myapp/pages/settings_page.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color.fromARGB(255, 7, 135, 255),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Anasayfa',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.notifications_sharp),
            ),
            label: 'Bildirimler',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_sharp),
            label: 'Ayarlar',
          ),
        ],
      ),
      body: const <Widget>[
        HomePage(),
        ProfilePage(),
        NotificationsPage(),
        SettingsPage(),
      ][currentPageIndex],
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
