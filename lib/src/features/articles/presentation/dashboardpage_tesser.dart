import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
          _buildDashboardItem(context, 'Profile', Icons.person, '/profile'),
          _buildDashboardItem(context, 'Course Registration', Icons.school,
              '/course_registration'),
          _buildDashboardItem(
              context, 'Transcript', Icons.grade, '/transcript'),
          _buildDashboardItem(
              context, 'Notifications', Icons.notifications, '/notifications'),
          _buildDashboardItem(context, 'Settings', Icons.settings, '/settings'),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(
      BuildContext context, String title, IconData icon, String route) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50.0),
              SizedBox(height: 10.0),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
