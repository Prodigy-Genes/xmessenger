import 'package:flutter/material.dart';
//import 'package:xmessenger/Screens/ChatScreen.dart';
import 'package:xmessenger/Screens/splashscreen.dart';


void main() {
  runApp (const XMessenger());
}

class XMessenger extends StatelessWidget {
  const XMessenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: const MySplashScreen(),
    );
  }
}

