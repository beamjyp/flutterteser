import 'package:flutter/material.dart';
import 'features/articles/presentation/courseregistrationpage_tesser.dart';
import 'features/articles/presentation/dashboardpage_tesser.dart';
import 'features/articles/presentation/loginpage_tesser.dart';
import 'features/articles/presentation/profilepage_tesser.dart';
import 'features/articles/presentation/notificationspage_tesser.dart';
import 'features/articles/presentation/settingspage.dart';
import 'features/articles/presentation/transcriptpage_tesser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University Registration System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/dashboard': (context) => DashboardPage(),
        '/profile': (context) => ProfilePage(),
        '/course_registration': (context) => CourseRegistrationPage(),
        '/transcript': (context) => TranscriptPage(),
        '/notifications': (context) => NotificationsPage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
