// ignore_for_file: file_names, library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';

class InChatScreen extends StatefulWidget {
  final List<String> contacts;
  final List<String> profilePictures;
  final int selectedIndex;

  const InChatScreen({super.key, 
    required this.contacts,
    required this.selectedIndex,
    required this.profilePictures,
  });

  @override
  _InChatScreenState createState() => _InChatScreenState();
}

class _InChatScreenState extends State<InChatScreen> {
  final TextEditingController _textController = TextEditingController();
  bool _isTextFieldEmpty = true;

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
                backgroundImage: NetworkImage(selectedProfilePicture),
                radius: 24,
              ),
              const SizedBox(width: 8),
              Text(selectedContact),
            ],
          ),
          onTap: () => print('Contact details pressed'),
        ),
        actions: [
          IconButton(
            onPressed: () => print('video call has been pressed!'),
            icon: const Icon(Icons.video_call, color: Color.fromARGB(255, 0, 255, 145)),
          ),
          IconButton(
            onPressed: () => print('Phone call has been pressed!'),
            icon: const Icon(Icons.phone, color: Color.fromARGB(255, 0, 255, 145)),
          ),
          IconButton(
            onPressed: () => print('More has been pressed!'),
            icon: const Icon(Icons.more_vert, color: Color.fromARGB(255, 0, 255, 145)),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 51, 13, 87),
      ),
      body: 
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 563, 4.0, 0.0),
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
      ),
      backgroundColor: const Color.fromARGB(255, 44, 0, 62),
    );
  }
}
