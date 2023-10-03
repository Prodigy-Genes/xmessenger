// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:xmessenger/Screens/inChatScreen.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> contacts = ["Contact A", "Contact B", "Contact C",];
    List<String> message = ["Hey", "Sup?", "Bye!"];
    List<String> messageStatus = ["Delivered", "Seen", "Sent"];
    List<String> messageTimestamp = ["yesterday", "9:30 AM", "10:30 PM"];


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
          title: Text(contacts[index],
          style: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 255, 145),),
          ),

          subtitle: Row (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (messageStatus[index] == "Delivered")
                    const Icon(
                      Icons.done_all,
                      size: 14,
                      color: Colors.white24,
                    )
                  
                  else if (messageStatus[index] == "Sent") 
                    const Icon(
                      Icons.check,
                      size: 14,
                      color: Colors.white24,
                    )

                  else if (messageStatus[index] == "Seen")
                    const Icon (
                      Icons.done_all,
                      size: 14,
                      color: Colors.blueAccent
                    )
                ],
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Text(
                message[index],
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white24),
              ),
              
              )

            ],
          ),

          trailing: Text(messageTimestamp[index],
          style: const TextStyle(fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
          ),

          onTap: () {
             // Handle tapping on a contact to open a chat
            // You can navigate to the chat screen or perform other actions here.
            Navigator.push(context, MaterialPageRoute(builder: (context)=>InChatScreen(
              contacts: contacts, 
              selectedIndex: index,
              profilePictures: profilePictures,)));
          },
          
        );
      },
    );
  }
}
