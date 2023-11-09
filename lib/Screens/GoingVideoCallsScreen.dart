// ignore_for_file: file_names, library_private_types_in_public_api, avoid_print
import 'package:flutter/material.dart';

class GoingVideoCallsScreen extends StatefulWidget {
  final String contactName;
  final String contactProfilePicture;

  const GoingVideoCallsScreen({
    Key? key,
    required this.contactName,
    required this.contactProfilePicture,
  }) : super(key: key);

  @override
  _GoingVideoCallsScreenState createState() => _GoingVideoCallsScreenState();
}

class _GoingVideoCallsScreenState extends State<GoingVideoCallsScreen> {
  bool isMuted = false;
  bool isVideoEnabled = true;

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
                  backgroundImage: NetworkImage(widget.contactProfilePicture),
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
                      onPressed: () {
                        setState(() {
                          isMuted = !isMuted;
                        });
                        print('Sound ${isMuted ? 'Muted' : 'Unmuted'}');
                      },
                      icon: Icon(
                        isMuted ? Icons.volume_off : Icons.volume_up,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isVideoEnabled = !isVideoEnabled;
                        });
                        print('Video ${isVideoEnabled ? 'Enabled' : 'Disabled'}');
                      },
                      icon: Icon(
                        isVideoEnabled ? Icons.videocam : Icons.videocam_off,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
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
