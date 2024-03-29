// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:xmessenger/Screens/inChatScreen.dart';
import 'package:xmessenger/Screens/profilePictureScreen.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> chatData = [
      {
        'contact': 'Contact A',
        'message': 'Hey',
        'messageStatus': 'Delivered',
        'messageTimestamp': 'yesterday',
        'isUserMessage': false,
        'profilePicture':
            'assets/images/luffy.jpg',
      },
      {
        'contact': 'Contact B',
        'message': 'Sup?',
        'messageStatus': 'Seen',
        'messageTimestamp': '9:30 AM',
        'isUserMessage': true,
        'profilePicture':
            'assets/images/luffy2.jpg',
      },
      {
        'contact': 'Contact C',
        'message': 'Bye!',
        'messageStatus': 'Sent',
        'messageTimestamp': '10:30 PM',
        'isUserMessage': false,
        'profilePicture':
            'assets/images/another.jpg',
      },
    ];

    return ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: GestureDetector(
            onTap: () {
              // Implement Function
              print('Profile Picture');
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePictureScreen(
                contacts: [chatData[index]['contact']], 
                profilePictures: [chatData[index]['profilePicture']], 
                selectedIndex: 0)
                )
                );
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(chatData[index]['profilePicture']),
              radius: 30,
            ),
          ),
          title: Text(
            chatData[index]['contact'],
            style: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 255, 145)),
          ),
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (chatData[index]['messageStatus'] == "Delivered"&& chatData[index]['isUserMessage']==true)
                    const Icon(
                      Icons.done_all,
                      size: 14,
                      color: Colors.white24,
                    )
                  else if (chatData[index]['messageStatus'] == "Sent"&& chatData[index]['isUserMessage']==true)
                    const Icon(
                      Icons.check,
                      size: 14,
                      color: Colors.white24,
                    )
                  else if (chatData[index]['messageStatus'] == "Seen" && chatData[index]['isUserMessage']==true)
                    const Icon(Icons.done_all, size: 14, color: Colors.blueAccent)
                ],
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Text(
                  chatData[index]['message'],
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white24),
                ),
              )
            ],
          ),
          trailing: Text(
            chatData[index]['messageTimestamp'],
            style: const TextStyle(fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          onTap: () {
            // Handle tapping on a contact to open a chat
            // You can navigate to the chat screen or perform other actions here.
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InChatScreen(
                  message: [chatData[index]['message']],
                  isUserMessage: [chatData[index]['isUserMessage']],
                  contacts: [chatData[index]['contact']],
                  selectedIndex: 0,
                  profilePictures: [chatData[index]['profilePicture']],
                  messageStatus: [chatData[index]['messageStatus']],
                  messageTimestamp: [chatData[index]['messageTimestamp']],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
