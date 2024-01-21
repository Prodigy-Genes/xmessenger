// ignore_for_file: file_names, library_private_types_in_public_api, avoid_print, unnecessary_const

import 'package:flutter/material.dart';

class GoingCallsScreen extends StatefulWidget {
  final String contactName;
  final String contactProfilePicture;

  const GoingCallsScreen({super.key, 
    required this.contactName,
    required this.contactProfilePicture,
  });

  @override
  _GoingCallsScreenState createState() => _GoingCallsScreenState();
}

class _GoingCallsScreenState extends State<GoingCallsScreen> {
  bool isMuted =false;
  bool soundup = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 0, 62),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 130, top: 10),
            child: Row(
              children: <Widget>[
                Icon(Icons.lock, color: Colors.white, size: 20),
                SizedBox(width: 10),
                Text(
                  'End-To-End Encrypted',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(height: 300),
          Container(
            padding: const EdgeInsets.all(31),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 37, 10, 49),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(widget.contactProfilePicture),
                  radius: 50,
                ),
                const SizedBox(height: 20),
                Text(
                  widget.contactName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 20),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: (){
                        setState(() {
                          soundup = !soundup;
                        });
                        print("Sound${soundup ? " High" : " Normal"}");
                      },
                      
                      icon: Icon(
                        soundup ?  Icons.volume_up : Icons.volume_down, 
                        color: Colors.white, 
                        size: 36)),
                    IconButton(
                      onPressed: (){
                        setState(() {
                          isMuted = !isMuted ;
                        });
                        print('Mic${isMuted ? " Muted" : " Unmuted"}');
                      },
                      icon: Icon(
                        isMuted ? Icons.mic_off : Icons.mic_external_on, 
                        color: Colors.white, 
                        size: 36),)
                  ],
                ),
                const SizedBox(height: 20),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.call_end, size: 32, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
