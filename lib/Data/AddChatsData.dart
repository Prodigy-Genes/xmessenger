// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AddChatsData extends StatelessWidget {
  const AddChatsData({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> contacts = ["Contact A", "Contact B", "Contact C",];
    List<String> contactsAbout = ["Me", "Faith", "Blablabla!"];
    final List<String> profilePictures = [
      'https://i.pinimg.com/564x/73/b7/f1/73b7f146a6f5d6201c3fd579aad12f66.jpg',
      'https://i.pinimg.com/564x/72/99/14/729914ee5f05da86c8660d7c785e79a6.jpg',
      'https://i.pinimg.com/564x/68/ea/28/68ea288e7de5c2c4aec494e6db818731.jpg'
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
              backgroundImage: NetworkImage(profilePictures[index]),
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
