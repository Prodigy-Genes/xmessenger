// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CameraIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Implement camera functionality
      },
      mini: true,
      backgroundColor: const Color.fromARGB(255, 0, 255, 145),
      child: const Icon(Icons.camera_alt),
    );
  }
}
