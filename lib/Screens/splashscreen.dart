// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:xmessenger/Screens/ChatScreen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen ({super.key});

  @override
  _MySplashScreenState createState() => _MySplashScreenState();

}

class _MySplashScreenState extends State<MySplashScreen> {
  late BuildContext _context;
  @override
  void initState(){
    super.initState();
    //Store context
    _context = context;
    _navigateToChat();
    }

  void _navigateToChat() async {
    try{
      //Simulate a delay for demonstration purposes
      await Future.delayed(const Duration(seconds: 5));

      //Navigate to the CHat screen using stored context
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ChatScreen(),
        ),
      );

    }catch (e) {
      print("Error navigating to Chat screen $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 0, 62),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("XMessenger", 
          style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 255, 145), fontWeight: FontWeight.bold)
          ),

          const SizedBox(height: 25,),
          Container(
            width: 150,

            child: const LinearProgressIndicator(
              value: null,
              minHeight: 5,
              color: Colors.white,)

          ),
          
        ],
      ),
      ),
    );
  } 
}