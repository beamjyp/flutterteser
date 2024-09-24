import 'package:flutter/material.dart';
import 'features/articles/presentation/courseregistrationpage_teser.dart';
import 'features/articles/presentation/dashboardpage_tesser.dart';
import 'features/articles/presentation/loginpage_teser.dart';
import 'features/articles/presentation/profilepage_teser.dart';
import 'features/articles/presentation/notificationspage_teser.dart';
import 'features/articles/presentation/settingspage_teser.dart';
import 'features/articles/presentation/transcriptpage_tesser.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University Registration System develop',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
