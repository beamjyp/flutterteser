import 'package:flutter/material.dart';

class TranscriptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transcript'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Text('Transcript Information will be displayed here'),
      ),
    );
  }
}
