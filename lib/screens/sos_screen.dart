import 'package:flutter/material.dart';

class SosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SOS Emergency'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.emergency, size: 100, color: Colors.red),
            SizedBox(height: 20),
            Text(
              'Send SOS with Your Location',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to send SOS with location
              },
              child: Text('Send SOS'),
            ),
          ],
        ),
      ),
    );
  }
}