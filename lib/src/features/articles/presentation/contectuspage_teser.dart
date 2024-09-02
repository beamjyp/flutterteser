import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Center(
        child: Text(
          'Contact us at: contact@example.com',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
