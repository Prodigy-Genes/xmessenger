import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), // Set border radius
      child: Image.asset(
        'assets/images/xMessenger.jpeg', // Replace with your image path
        width: 125,
        height: 125,
      ),
    );
  }
}
