import 'package:flutter/material.dart';

import 'notificationservice.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NotificationService notificationService = NotificationService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationService.initialiseNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print(notificationService);
                notificationService.sendNotification(
                    "This is a Title", "This is a body");
              },
              child: const Text('Simple Notification'),
            ),
            ElevatedButton(
              onPressed: () {
                print("Schedule Notification");
                notificationService.secheduleNotification(
                    "Schedule Notification", "Body");
              },
              child: const Text('Schedule Notification'),
            ),
          ],
        ),
      ),
    );
  }
}
