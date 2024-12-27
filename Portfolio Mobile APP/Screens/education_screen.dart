import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Education')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _educationTile('The University of Lahore', 'BS in Information Engineering Technology', '2022 - 2026'),
          _educationTile('Shalamar post graduate college', 'ICS in Statistics', '2019 - 2021'),
        ],
      ),
    );
  }

  Widget _educationTile(String institution, String degree, String years) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(institution, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text('$degree\n$years'),
      ),
    );
  }
}
