// ignore_for_file: file_names, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:xmessenger/Components/Chats.dart';

class XMessenger extends StatelessWidget {
  const XMessenger({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green, // Change to your desired primary color
      ),
      home: const ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XMessenger', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 255, 145))),
        backgroundColor: const Color.fromARGB(255, 51, 13, 87),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
            color: const Color.fromARGB(255, 0, 255, 145)
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Implement menu functionality
            },
            color: const Color.fromARGB(255, 0, 255, 145)
          ),
          IconButton(onPressed: (){
            // Implement Call functionality
          }, icon: const Icon(Icons.call),
          color: const Color.fromARGB(255, 0, 255, 145)
          )
        ],
      ),
      body: const Chats(),
      /*const Center(
        child: Text('Welcome to XMessenger! Tap on the Chat Icon to start a Chat!',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(207, 39, 137, 45)),textAlign: TextAlign.center,),
        
      ),*/
      backgroundColor: const Color.fromARGB(255, 44, 0, 62),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement new chat functionality
        },
        backgroundColor: const Color.fromARGB(255, 0, 255, 145),
        child: const Icon(Icons.message), // Change to your desired color
      ),
    );
  }
}
