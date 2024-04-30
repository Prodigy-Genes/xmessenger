// ignore_for_file: library_private_types_in_public_api, avoid_print, use_build_context_synchronously, unused_import

import 'package:flutter/material.dart';
import 'package:xmessenger/Components/icon.dart';
import 'package:xmessenger/Screens/ChatScreen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:xmessenger/Screens/welcome.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  late BuildContext _context;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Store context
    _context = context;
    _startLoading();
  }

  void _startLoading() {
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _isLoading = false; // Update loading state after 5 seconds
        _checkInternetAndNavigateToChat(); // Start checking internet connection
      });
    });
  }

  void _checkInternetAndNavigateToChat() async {
    try {
      while (true) {
        var connectivityResult = await Connectivity().checkConnectivity();
        print("Connectivity Result: $connectivityResult");
        if (connectivityResult != ConnectivityResult.none) {
          // Internet Connection is available
          print("Internet Connection Available. Navigating to Chat Screen...");
          // Navigate to the Chat screen using stored context
          Navigator.of(_context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const Welcomescreen(),
            ),
          );
          print("Navigation completed.");
          return; // Exit the loop if internet connection is restored
        }

        // No internet connection, continue loading
        print("No Internet Connection, continuing to load...");
        await Future.delayed(const Duration(seconds: 3)); // Wait for 3 seconds
      }
    } catch (e) {
      print("Error navigating to Chat screen: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 0, 62),
      body: Stack(
        children: [
          Center(
            child: _isLoading
                ? const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppIcon(),
                      SizedBox(height: 15),
                      Text(
                        "XMessenger",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 0, 255, 145),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Philosopher',
                        ),
                      ),
                      SizedBox(height: 25),
                    ],
                  )
                : const SizedBox(), // Render nothing when not loading
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: _isLoading
                ? const CircularProgressIndicator() // Render circular progress indicator
                : const SizedBox(), // Render nothing when not loading
          ),
        ],
      ),
    );
  }
}
