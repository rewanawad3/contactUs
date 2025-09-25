import 'package:flutter/material.dart';
import 'screens/contact_us_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/notification_screen.dart';
import 'screens/password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        fontFamily: 'LeagueSpartan',
        primaryColor: const Color(0xFFFACB42),
      ),
      initialRoute: '/contact',
      routes: {
        '/contact': (context) => const ContactUsScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/notification': (context) => const NotificationScreen(),
        '/password': (context) => const PasswordScreen(),
      },
    );
  }
}
