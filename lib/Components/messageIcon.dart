// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:xmessenger/Screens/AddChatsScreen.dart';

class MessageIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddChatsScreen()),
        );
      },
      backgroundColor: const Color.fromARGB(255, 0, 255, 145),
      child: const Icon(Icons.message),
    );
  }
}
