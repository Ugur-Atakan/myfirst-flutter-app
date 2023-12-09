import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage();

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  var notifications = [
    {'title': 'Bildirim 1', 'message': 'Bildirim 1 mesajı'},
    {'title': 'Bildirim 2', 'message': 'Bildirim 2 mesajı'},
    {'title': 'Bildirim 3', 'message': 'Bildirim 3 mesajı'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bildirimler'),
      ),
      body: Center(
        child: NotificationList(
          notificationListesi: notifications,
        ),
      ),
    );
  }
}

class NotificationList extends StatelessWidget {
  final List<Map<String, String>>? notificationListesi;

  const NotificationList({Key? key, this.notificationListesi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notificationListesi!.length,
      itemBuilder: (context, index) {
        final element = notificationListesi![index];
        return NotificationCard(
          title: element['title']!,
          message: element['message']!,
        );
      },
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String message;

  const NotificationCard({Key? key, required this.title, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(message),
      ),
    );
  }
}
