// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, avoid_print

import 'package:flutter/material.dart';

class InChatScreen extends StatelessWidget {
  final List<String> contacts;
  final List<String> profilePictures;
  final int selectedIndex;

  InChatScreen({
    required this.contacts, 
    required this.selectedIndex,
    required this.profilePictures});

  @override
  Widget build(BuildContext context) {
    String selectedContact = contacts[selectedIndex];
    String selectedprofilPictures = profilePictures[selectedIndex];
    return Scaffold(
      appBar: AppBar(
        title:GestureDetector(
          child: Row(children: [
          CircleAvatar(
            backgroundImage: NetworkImage(selectedprofilPictures), 
            radius: 24,
          ),
          const SizedBox(width: 8,),
        Text(selectedContact),
        ],
        ),
        onTap: ()=>print('Contact details pressed'),
        ) ,

        actions:[
          IconButton(
          onPressed: ()=>print('video call has been pressed!'), 
          icon: const Icon(Icons.video_call, color: Color.fromARGB(255, 0, 255, 145))
          ),

          IconButton(
          onPressed: ()=>print('Phone call has been pressed!'), 
          icon: const Icon(Icons.phone, color: Color.fromARGB(255, 0, 255, 145))
          ),

          IconButton(
          onPressed: ()=>print('More has been pressed!'), 
          icon: const Icon(Icons.more_vert, color: Color.fromARGB(255, 0, 255, 145))
          ),
        ],  
        // Other app bar properties
        backgroundColor: const Color.fromARGB(255, 51, 13, 87),
      ),
      body: Center(
        child: Text('Chat with $selectedContact'),
      ),
      backgroundColor: const Color.fromARGB(255, 44, 0, 62),
    );
  }
}
