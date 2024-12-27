import 'package:flutter/material.dart';
import 'skills_screen.dart';
import 'interests_screen.dart';
import 'projects_screen.dart';
import 'education_screen.dart';
import 'experience_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Portfolio')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              CircleAvatar(
  radius: 50,
  backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with your URL
  backgroundColor: Colors.grey[200],
),

              SizedBox(height: 8),

              // Name
              Text(
                'Waseem Ahmed',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4),

              // Title
              Text(
                'Mobile App Developer & Designer',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),

              // Social Media Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialIcon(Icons.facebook, Colors.blue),
                  SizedBox(width: 8),
                  _socialIcon(Icons.work, Colors.green),
                  SizedBox(width: 8),
                  _socialIcon(Icons.telegram, Colors.blueAccent),
                  SizedBox(width: 8),
                  _socialIcon(Icons.messenger, Colors.lightBlue),
                ],
              ),
              SizedBox(height: 12),

              // Check Resume Button
              ElevatedButton(
                onPressed: () {
                  // Add action for the "Check Resume" button
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                child: Text(
                  'Check Resume',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16),

              // Additional Info
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _infoRow('Profession:', 'Software Developer'),
                  _infoRow('Date of Birth:', '18-10-2002'),
                  _infoRow('Education:', 'Higher Education'),
                ],
              ),
              SizedBox(height: 16),

              // Navigation Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _navigationButton(context, 'Skills', SkillsScreen()),
                  SizedBox(width: 8),
                  _navigationButton(context, 'Interests', InterestsScreen()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _navigationButton(context, 'Projects', ProjectsScreen()),
                  SizedBox(width: 8),
                  _navigationButton(context, 'Education', EducationScreen()),
                  SizedBox(width: 8),
                  _navigationButton(context, 'Experience', ExperienceScreen()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Social Media Icon Button
  Widget _socialIcon(IconData icon, Color color) {
    return InkWell(
      onTap: () {
        // Handle social media navigation
      },
      child: CircleAvatar(
        radius: 20,
        backgroundColor: color.withOpacity(0.1),
        child: Icon(icon, color: color, size: 20),
      ),
    );
  }

  // Information Row
  Widget _infoRow(String title, String detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          SizedBox(width: 4),
          Text(
            detail,
            style: TextStyle(fontSize: 14, color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }

  // Navigation Button
  Widget _navigationButton(BuildContext context, String title, Widget screen) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
