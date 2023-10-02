// ignore_for_file: file_names, camel_case_types, library_private_types_in_public_api

import 'package:flutter/material.dart';

class starredMessagesScreen extends StatefulWidget{
  const starredMessagesScreen ({super.key});

@override
  _starredMessagesScreenState createState() => _starredMessagesScreenState();
}

class _starredMessagesScreenState extends State<starredMessagesScreen> {
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('_Starred Messages', style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromRGBO(0, 255, 145, 1) ),
        ),
        backgroundColor: const Color.fromARGB(255, 51, 13, 87),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            
          const Padding(
            padding: EdgeInsets.only(right: 120, bottom: 160),
            child: IconButton(onPressed: null, icon: Icon(Icons.star_rounded, size: 180, color: Color.fromRGBO(0, 255, 145, 1),)
            ),
            ),
          
          Container(
            alignment: Alignment.center,
            child: const Text('Tap and Hold any message in any chat\n to Star it, so you can easily find it later.',
            style: TextStyle(color: Colors.grey),
          ),
          )        
        ],
        
      ),
      backgroundColor: const Color.fromARGB(255, 44, 0, 62),
    );
  }
}