import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Skills')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _skillTile('Flutter', 90),
          _skillTile('Dart', 85),
          _skillTile('UI/UX Design', 80),
        ],
      ),
    );
  }

  Widget _skillTile(String skill, int percentage) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(skill, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          LinearProgressIndicator(
            value: percentage / 100,
            backgroundColor: Colors.grey[300],
            color: Colors.blue,
            minHeight: 8,
          ),
          SizedBox(height: 4),
          Text('$percentage%'),
        ],
      ),
    );
  }
}
