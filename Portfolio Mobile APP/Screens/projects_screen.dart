import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projects')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _projectTile('Todo App', 'A simple to-do list app built with Flutter and Firebase.'),
          _projectTile('Weather App', 'A weather app using REST API for data fetching.'),
          _projectTile('Expense Tracker', 'An app to manage expenses efficiently on the go.'),
        ],
      ),
    );
  }

  Widget _projectTile(String title, String description) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
      ),
    );
  }
}
