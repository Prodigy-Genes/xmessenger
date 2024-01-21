// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AddChatsData extends StatelessWidget {
  const AddChatsData({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> contacts = ["Contact A", "Contact B", "Contact C",];
    List<String> contactsAbout = ["Me", "Faith", "Blablabla!"];
    final List<String> profilePictures = [
      'assets/images/luffy.jpg',
      'assets/images/luffy2.jpg',
      'assets/images/another.jpg'
    ];
    

    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: GestureDetector(
            onTap: (){
              // Implement Function
            },

            child: CircleAvatar (
              backgroundImage: AssetImage(profilePictures[index]),
              radius: 30,
            ),
          ), 
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0), 
            child: Text(
              contacts[index],
              style: const TextStyle(fontSize: 18,  color: Color.fromARGB(255, 0, 255, 145),),
            ),
          ),

          subtitle: Text(contactsAbout[index], style: const TextStyle(color: Color.fromARGB(128, 255, 255, 255)),),
          onTap: () {
             // Handle tapping on a contact to open a chat
            // You can navigate to the chat screen or perform other actions here.
          },
          
        );
      },
    );
  }
}
