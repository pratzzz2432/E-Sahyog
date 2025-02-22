import 'package:flutter/material.dart';
import 'package:dis_management/screens/sos_screen.dart';
import 'package:dis_management/screens/map_screen.dart';
import 'package:dis_management/screens/chatbot_screen.dart';
import 'package:dis_management/screens/abha_screen.dart';
import 'package:dis_management/screens/training_screen.dart';
import 'package:dis_management/screens/alerts_screen.dart';
import 'package:dis_management/screens/donate_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disaster Management App'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          FeatureButton(Icons.emergency, 'SOS', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SosScreen()),
            );
          }),
          FeatureButton(Icons.map, 'Map', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MapScreen()),
            );
          }),
          FeatureButton(Icons.chat, 'Chatbot', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatbotScreen()),
            );
          }),
          FeatureButton(Icons.school, 'Training', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TrainingScreen()),
            );
          }),
          FeatureButton(Icons.notifications, 'Alerts', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AlertsScreen()),
            );
          }),
          FeatureButton(Icons.volunteer_activism, 'Donate', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DonateScreen()),
            );
          }),
        ],
      ),
    );
  }
}

class FeatureButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  FeatureButton(this.icon, this.label, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48),
            SizedBox(height: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}