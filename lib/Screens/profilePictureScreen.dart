// ignore_for_file: library_private_types_in_public_api, file_names, avoid_print

import 'package:flutter/material.dart';

class ProfilePictureScreen extends StatefulWidget {
  final List<String> profilePictures;
  final List<String> contacts;
  final int selectedIndex;
  const ProfilePictureScreen ({
    required this.contacts,
    required this.profilePictures,
    required this.selectedIndex,
    super.key});

  @override
  _ProfilePictureScreenState createState()=> _ProfilePictureScreenState();
}

class _ProfilePictureScreenState extends State <ProfilePictureScreen> {

  @override
  Widget build(BuildContext context){
    String selectedContact = widget.contacts[widget.selectedIndex];
    String selectedProfilePicture = widget.profilePictures[widget.selectedIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text('_$selectedContact',
        style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 255, 145), fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)
        ),

        actions: [
          IconButton(
          onPressed: ()=> print('Share Pressed'),
          icon: const Icon(Icons.share, color: Color.fromARGB(255, 0, 255, 145),)
          )
        ],
      ),

      body: Center(
        child: Image.network(selectedProfilePicture,
        fit: BoxFit.cover,
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}