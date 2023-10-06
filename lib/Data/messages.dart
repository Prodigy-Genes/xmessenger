// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  
  final List<String> message;
  final List<bool> isUserMessage;
  final ScrollController scrollController;
   const Messages ({super.key,
                  required this.message,
                   required this.scrollController,
                   required this.isUserMessage
                  });

@override 

Widget build(BuildContext context){
  return ListView.builder(
    itemCount: message.length,
    controller: scrollController,
    itemBuilder: (BuildContext context, int index){
      
      bool isUser= isUserMessage[index];

      return Align(
        alignment: isUser ? Alignment.topRight: Alignment.topLeft,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isUser ? const Color.fromARGB(255, 137, 123, 0) : Colors.blueGrey,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Text(message[index], style: const TextStyle(color: Colors.white),),
        ),
      );
    });
}
}