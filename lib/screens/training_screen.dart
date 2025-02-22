import 'package:flutter/material.dart';

class TrainingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Virtual Training'),
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with actual training modules
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Training Module ${index + 1}'),
            onTap: () {
              // Navigate to training details
            },
          );
        },
      ),
    );
  }
}