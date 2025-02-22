import 'package:flutter/material.dart';

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