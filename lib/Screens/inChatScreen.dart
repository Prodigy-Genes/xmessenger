// ignore_for_file: file_names, library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:xmessenger/Components/inchat_more_vert.dart';
import 'package:xmessenger/Data/goingvideocallsdata.dart';
import 'package:xmessenger/Data/messages.dart';
import 'package:xmessenger/Screens/GoingCallsScreen.dart';
import 'package:xmessenger/Data/goingcallsdata.dart';
import 'package:xmessenger/Screens/GoingVideoCallsScreen.dart';

class InChatScreen extends StatefulWidget {
  final List<String> contacts;
  final List<String> profilePictures;
  final List<String> message;
  final List<bool> isUserMessage;
  final int selectedIndex;
  final List<String> messageStatus;
  final List<String> messageTimestamp;

  const InChatScreen({
    Key? key,
    required this.contacts,
    required this.selectedIndex,
    required this.profilePictures,
    required this.message,
    required this.isUserMessage,
    required this.messageStatus,
    required this.messageTimestamp
  }) : super(key: key);

  @override
  _InChatScreenState createState() => _InChatScreenState();
}

class _InChatScreenState extends State<InChatScreen> {
  final TextEditingController _textController = TextEditingController();
  bool _isTextFieldEmpty = true;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    
    String selectedContact = widget.contacts[widget.selectedIndex];
    String selectedProfilePicture = widget.profilePictures[widget.selectedIndex];
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(selectedProfilePicture),
                radius: 24,
              ),
              const SizedBox(width: 8),
              Text(selectedContact,
              style: const TextStyle(fontSize:15, color: Colors.grey ),),
            ],
          ),
          onTap: () => print('Contact details pressed'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              VideoCallContact selectedContact = GoingVideoCallsData.contacts
              .firstWhere((contact) => contact.name == widget.contacts[widget.selectedIndex]);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> GoingVideoCallsScreen(
                contactName: selectedContact.name, 
                contactProfilePicture: selectedContact.profilePicture
                )
                )
                );
            },
            icon: const Icon(Icons.video_call, color: Color.fromARGB(255, 0, 255, 145)),
          ),
          IconButton(
            onPressed: () {
              CallContact selectedContact = GoingCallsData.contacts
              .firstWhere((contact) => contact.name == widget.contacts[widget.selectedIndex]);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  GoingCallsScreen(
                contactName: selectedContact.name,
                contactProfilePicture: selectedContact.profilePicture,
              )
              )
              );
            },
            icon: const Icon(Icons.phone, color: Color.fromARGB(255, 0, 255, 145)),
          ),
          IconButton(
            onPressed: () {
              showInChatMoreVertMenu(context);
            },
            icon: const Icon(Icons.more_vert, color: Color.fromARGB(255, 0, 255, 145)),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 51, 13, 87),
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              print('Learn More');
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(left: 8, right: 8, top: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 58, 65, 14),
                borderRadius: BorderRadius.circular(12)
              ),
              
              child: const Row(
                children: <Widget>[
                    SizedBox(width: 35,),
                    Icon(Icons.lock, size: 11, color: Colors.grey,),
                    SizedBox(width:10),
                    Text('Messages are end-to-end encrypted. Tap to know more!',
                    style: TextStyle(fontSize: 11, color: Colors.white),)
                  
                ],
              ),
            ),
          ),
          Expanded(
            child: Messages(
              message: widget.message, 
              scrollController: _scrollController,
              isUserMessage: widget.isUserMessage,
              messageStatus: widget.messageStatus,
              messageTimestamp: widget.messageTimestamp,
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    style: const TextStyle(color: Color.fromARGB(255, 0, 255, 145)),
                    decoration: InputDecoration(
                      hintText: 'Input message...',
                      hintStyle: const TextStyle(color: Colors.grey),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(250.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(250.0),
                      ),
                      fillColor: const Color.fromARGB(255, 17, 17, 69),
                      filled: true,
                      prefixIcon: IconButton(
                        onPressed: () => print('pressed on emojis'),
                        icon: const Icon(Icons.emoji_emotions, color: Colors.yellowAccent),
                      ),
                      suffixIcon: _isTextFieldEmpty
                          ? IconButton(
                              onPressed: () => print('pressed on voice note'),
                              icon: const Icon(Icons.mic, color: Colors.green),
                            )
                          : IconButton(
                              onPressed: () {
                               print('Message sent: ${_textController.text}');
                                // Implement your message sending logic here

                              setState(() {
                                widget.message.add(_textController.text);
                                widget.isUserMessage.add(true);
                                widget.messageStatus.add('Delivered');
                                widget.messageTimestamp.add(DateTime.now().toLocal().toIso8601String().split('T')[1].substring(0, 5));
                              });
                              _textController.clear();
                              },
                              icon: const Icon(Icons.send_rounded, color: Color.fromARGB(255, 0, 255, 145)),
                            ),
                    ),
                    onChanged: (text) {
                      setState(() {
                        _isTextFieldEmpty = text.isEmpty;
                      });
                    },
                  ),
                ),
                IconButton(
                  onPressed: () => print('pressed on gallery'),
                  icon: const Icon(Icons.file_present, color: Color.fromARGB(255, 13, 198, 185)),
                ),
                IconButton(
                  onPressed: () => print('pressed on camera'),
                  icon: const Icon(Icons.camera_alt, color: Color.fromARGB(255, 65, 56, 194)),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 44, 0, 62),
    );
  }
}

