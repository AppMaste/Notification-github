import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'notificationservice.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initialiseNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
