// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            print("Sign up");
          },
          child: Container(
            width: 300,
            height: 50, // Set the height of the button
            decoration: BoxDecoration(
              color: const Color.fromARGB(200, 137, 84, 230),
              borderRadius: BorderRadius.circular(10), 
            ),
            child: const Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, // Text color for Sign Up button
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10), // Add some space between buttons
        GestureDetector(
          onTap: () {
            print("Sign In");
          },
          child: Container(
            width: 300,
            height: 50, // Set the height of the button
            decoration: BoxDecoration(
              color: Colors.white, // Background color for Sign In button
              borderRadius: BorderRadius.circular(10), // Rounded corners for Sign In button
              border: Border.all(color:const  Color.fromARGB(200, 137, 84, 230),), // Border color for Sign In button
            ),
            child: const Center(
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(200, 137, 84, 230), 
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
