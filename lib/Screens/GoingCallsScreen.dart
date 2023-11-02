// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:xmessenger/Data/goingcallsdata.dart';

class GoingCallsScreen extends StatefulWidget {
  const GoingCallsScreen({Key? key}) : super(key: key);

  @override
  _GoingCallsScreenState createState() => _GoingCallsScreenState();
}

class _GoingCallsScreenState extends State<GoingCallsScreen> {
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

          Expanded(
            child: ListView.builder(
              itemCount: callData.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(callData[index]['profilePicture']),
                    radius: 30,
                  ),
                  title: Text(callData[index]['contact']),
                  onTap: () {
                    // Add functionality when a list item is tapped
                  },
                );
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(31),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 37, 10, 49),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: <Widget>[
                const SizedBox(width: 70),
                const Icon(Icons.volume_up, color: Colors.white, size: 36),
                const SizedBox(width: 50),
                const Icon(Icons.mic_off, color: Colors.white, size: 36),
                const SizedBox(width: 50),
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
