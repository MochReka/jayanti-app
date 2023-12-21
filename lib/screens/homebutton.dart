// screens/homebutton.dart
import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final String text;
  final String imagePath;

  HomeButton({
    required this.onPressed,
    required this.color,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
