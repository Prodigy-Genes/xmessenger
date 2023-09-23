// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AddChatsScreen extends StatefulWidget {
  const AddChatsScreen({super.key});

  @override
  _AddChatsScreenState createState() => _AddChatsScreenState();
}

class _AddChatsScreenState extends State<AddChatsScreen> {
  // Simulated list of contacts, replace with your data source
  List<String> contacts = [
    "Contact 1",
    "Contact 2",
    "Contact 3",
    // Add more contacts here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Chat'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(contacts[index]),
            onTap: () {
              // Handle contact selection here
              // You can create a new chat with the selected contact
              // and navigate back to the chat screen.
              String selectedContact = contacts[index];
              // Add your logic to create a new chat with the selected contact.
              // You might want to use a Navigator to return to the chat screen.
            },
          );
        },
      ),
    );
  }
}
