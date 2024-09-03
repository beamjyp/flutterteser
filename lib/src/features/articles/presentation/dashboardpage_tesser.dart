import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.indigo,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
          _buildDashboardItem(
              context, 'Profile', Icons.person, Colors.deepPurple, '/profile'),
          _buildDashboardItem(context, 'Course Registration', Icons.school,
              Colors.teal, '/course_registration'),
          _buildDashboardItem(context, 'Transcript', Icons.grade,
              Colors.amber[700]!, '/transcript'),
          _buildDashboardItem(context, 'Notifications', Icons.notifications,
              Colors.redAccent, '/notifications'),
          _buildDashboardItem(context, 'Settings', Icons.settings,
              Colors.blueGrey, '/settings'),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context, String title, IconData icon,
      Color color, String route) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => Navigator.pushNamed(context, route),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 30,
                child: Icon(icon, size: 30, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
