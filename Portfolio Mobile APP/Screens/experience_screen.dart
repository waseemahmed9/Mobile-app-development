import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Experience')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _experienceTile(
            'Front-End Web Developer',
            'Code Alpha',
            'Successfully completed a remote internship, gaining hands-on experience in professional software development.',
          ),
        ],
      ),
    );
  }

  Widget _experienceTile(String role, String company, String description) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(role, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$company\n\n$description'),
      ),
    );
  }
}
