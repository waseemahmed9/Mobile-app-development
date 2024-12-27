import 'package:flutter/material.dart';

class InterestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interests')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _interestTile('Mobile App Development', 'Creating innovative and user-friendly mobile apps.'),
          _interestTile('Web Development', 'Building responsive and scalable web apps.'),
          _interestTile('Machine Learning', 'Exploring algorithms and models to extract insights.'),
          _interestTile('Cloud Computing', 'Leveraging cloud platforms for scalable solutions.'),
        ],
      ),
    );
  }

  Widget _interestTile(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(description),
      ),
    );
  }
}
