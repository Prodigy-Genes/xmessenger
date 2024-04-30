import 'package:flutter/material.dart';
import 'package:xmessenger/Components/buttons.dart';
import 'package:xmessenger/Components/icon.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 0, 62),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200), // Add space above AppIcon
            AppIcon(),
            SizedBox(height: 15),
            Text(
              "Welcome to xMessenger",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 30), // Add space between icon and buttons
            Expanded(
              child: Button(),
            ),
          ],
        ),
      ),
    );
  }
}
