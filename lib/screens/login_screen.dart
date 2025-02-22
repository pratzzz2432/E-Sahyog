import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the home screen

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Navigate to the home screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Navigate to signup screen
              },
              child: Text('Don’t have an account? Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}