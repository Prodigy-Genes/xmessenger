// ignore_for_file: file_names, library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:xmessenger/Data/AddChatsData.dart';

class CallScreen extends StatefulWidget{
  const CallScreen({super.key});

  @override
  _CallScreenState  createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Make_A_Call', style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromARGB(255, 0, 255, 145),)),
            Padding(padding: EdgeInsets.only(top: 5),
            child : Text('24 Contacts', style: TextStyle(color: Colors.white, fontSize: 14),)
            )
            
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 51, 13, 87),
        actions: [
          IconButton(
            onPressed: () {
              print("Search has been pressed!");
            },
            icon: const Icon(Icons.search),
            color: const Color.fromARGB(255, 0, 255, 145),
          ),

          IconButton(onPressed: (){
            print('More Options');
          }, icon: const Icon(Icons.more_vert),
          color:  const Color.fromARGB(255, 0, 255, 145),)
        ],
      ),

      body: Container(
        color: const Color.fromARGB(255, 44, 0, 62),
      child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
      color: const Color.fromARGB(255, 51, 13, 87),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              print('Select Contacts To Make A Group Call');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 92, 19, 202), // Change the button color
            ),
            child: const Text(
              'Group Call',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 0, 255, 145),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('Add A New COntact');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 92, 19, 202), // Change the button color
            ),
            child: const Text(
              'New Contact',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 0, 255, 145),
              ),
            ),
          ),
        ],
      ),
      
    ),
    const Padding(padding: EdgeInsets.only(top: 18, left: 18, bottom: 10),
    child: Text('--Contacts On XMessenger--', style: TextStyle(color: Colors.white, fontSize: 14, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),),
    ),

    const Expanded (
      child: AddChatsData()
    ),
    
  ],
),
      )
    );
  }
}