import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // Import your login screen

void main() {
  runApp(DisasterManagementApp());
}

class DisasterManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disaster Management App',
        theme: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Colors.blue,
            secondary: Colors.orange,
          ),
        )
      home: LoginScreen(), // Set the login screen as the home
    );
  }
}