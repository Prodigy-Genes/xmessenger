// ignore_for_file: file_names, library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen ({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State <SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('_Settings', style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromRGBO(0, 255, 145, 1),),),
        backgroundColor: const Color.fromARGB(255, 51, 13, 87),
        actions: [
          IconButton(
            onPressed: () {
              print("Search has been pressed!");
            },
            icon: const Icon(Icons.search),
            color: const Color.fromRGBO(0, 255, 145, 1),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children : [
        GestureDetector(
          onTap: ()=> print('Tapped On Profile'),
          child: const Row(
          children: [
            SizedBox(width: 10,),
            SizedBox(height: 100,),
          CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/images/creepy.jpg'),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ProdigyGenes',style: TextStyle(fontSize: 20,color: Color.fromRGBO(0, 255, 145, 1),),
            ),
      
            Text('GeniusAwakened',style: TextStyle(fontSize: 14,color: Color.fromRGBO(164, 164, 164, 0.808),),
            ),
          ],
        )
        
        ],
      ),
        ),
      
        GestureDetector(
          onTap: ()=> print('Tapped on Account'),
          child: const Row(
          children: [
            SizedBox(width: 30,),
            SizedBox(height: 70,),
          CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 51, 13, 87) ,
          child: Icon(Icons.account_box, size: 24, color: Color.fromRGBO(0, 255, 145, 1),),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('_Account',style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 255, 145, 1),),
            ),
      
            Text('Gain Access To All Account Information',style: TextStyle(fontSize: 14,color: Color.fromRGBO(164, 164, 164, 0.808),),
            ),
          ],
        )
        
        ],
      ),
        ),
      
        GestureDetector(
          onTap: ()=> print('Tapped on Privacy'),
          child: const Row(
          children: [
            SizedBox(width: 30,),
            SizedBox(height: 70,),
          CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 51, 13, 87) ,
          child: Icon(Icons.lock, size: 24, color: Color.fromRGBO(0, 255, 145, 1),),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('_Privacy',style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 255, 145, 1),),
            ),
      
            Text('Block Contacts & More',style: TextStyle(fontSize: 14,color: Color.fromRGBO(164, 164, 164, 0.808),),
            ),
          ],
        )
        
        ],
      ),
        ),
      
        GestureDetector(
          onTap: ()=> print('Tapped on Chats'),
          child: const Row(
          children: [
            SizedBox(width: 30,),
            SizedBox(height: 70,),
          CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 51, 13, 87) ,
          child: Icon(Icons.chat_bubble, size: 24, color: Color.fromRGBO(0, 255, 145, 1),),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('_Chats',style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 255, 145, 1),),
            ),
      
            Text('Chat history, Wallpapers, Theme',style: TextStyle(fontSize: 14,color: Color.fromRGBO(164, 164, 164, 0.808),),
            ),
          ],
        )
        
        ],
      ),
        ),
      
        GestureDetector(
          onTap: ()=> print('Tapped on Notifications'),
          child: const Row(
          children: [
            SizedBox(width: 30,),
            SizedBox(height: 70,),
          CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 51, 13, 87) ,
          child: Icon(Icons.notifications, size: 24, color: Color.fromRGBO(0, 255, 145, 1),),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('_Notifications',style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 255, 145, 1),),
            ),
      
            Text('Set Custom Notifcations',style: TextStyle(fontSize: 14,color: Color.fromRGBO(164, 164, 164, 0.808),),
            ),
          ],
        )
        
        ],
      ),
        ),
      
        GestureDetector(
          onTap: ()=> print('Tapped on Storage And data'),
          child: const Row(
          children: [
            SizedBox(width: 30,),
            SizedBox(height: 70,),
          CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 51, 13, 87) ,
          child: Icon(Icons.storage_rounded, size: 24, color: Color.fromRGBO(0, 255, 145, 1),),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('_Storage And Data',style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 255, 145, 1),),
            ),
      
            Text('Manage Data And Storage',style: TextStyle(fontSize: 14,color: Color.fromRGBO(164, 164, 164, 0.808),),
            ),
          ],
        )
        
        ],
      ),
        ),
      
        GestureDetector(
          onTap: ()=> print('Tapped on Language'),
          child: const Row(
          children: [
            SizedBox(width: 30,),
            SizedBox(height: 70,),
          CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 51, 13, 87) ,
          child: Icon(Icons.language, size: 24, color: Color.fromRGBO(0, 255, 145, 1),),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('_App Language',style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 255, 145, 1),),
            ),
      
            Text('Set Language For App',style: TextStyle(fontSize: 14,color: Color.fromRGBO(164, 164, 164, 0.808),),
            ),
          ],
        )
        
        ],
      ),
        ),
      
        GestureDetector(
          onTap: ()=> print('Tapped on Help'),
          child: const Row(
          children: [
            SizedBox(width: 30,),
            SizedBox(height: 70,),
          CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 51, 13, 87) ,
          child: Icon(Icons.help_center, size: 24, color: Color.fromRGBO(0, 255, 145, 1),),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('_Help',style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 255, 145, 1),),
            ),
      
            Text('Help Centre, Contact Us',style: TextStyle(fontSize: 14,color: Color.fromRGBO(164, 164, 164, 0.808),),
            ),
          ],
        )
        
        ],
      ),
        ),
      
        GestureDetector(
          onTap: ()=> print('Tapped on Invite'),
          child: const Row(
          children: [
            SizedBox(width: 30,),
            SizedBox(height: 70,),
          CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 51, 13, 87) ,
          child: Icon(Icons.group, size: 24, color: Color.fromRGBO(0, 255, 145, 1),),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('_Invite A Friend',style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 255, 145, 1),),
            ),
      
            Text('Ask A Friend To Join',style: TextStyle(fontSize: 14,color: Color.fromRGBO(164, 164, 164, 0.808),),
            ),
          ],
        )
        
        ],
      ),
        )
        ]
            ),
            ),
      backgroundColor:  const Color.fromARGB(255, 44, 0, 62),
    );
  }
}
