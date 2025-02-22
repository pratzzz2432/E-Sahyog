import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Alerts'),
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with actual alerts
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Alert ${index + 1}'),
            subtitle: Text('Details about the alert'),
          );
        },
      ),
    );
  }
}