// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:xmessenger/Screens/linkedDevicesScreen.dart';
import 'package:xmessenger/Screens/settingsScreen.dart';
import 'package:xmessenger/Screens/starredMessagesScreen.dart';

class MoreVertMenu extends StatelessWidget {
  const MoreVertMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        if (value == 'Option1') {
          // Perform action for item1
        } else if (value == 'Option2') {
          // Perform action for item2
        } else if (value == 'Option3') {
          // Navigate to SettingsScreen
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Option1',
          child: Text('Linked Devices'),
        ),
        const PopupMenuItem<String>(
          value: 'Option2',
          child: Text('Starred Messages'),
        ),
        const PopupMenuItem<String>(
          value: 'Option3',
          child: Text('Settings'),
        ),
      ],
    );
  }
}

Future<void> showMoreVertMenu(BuildContext context) async {
  final RenderBox button = context.findRenderObject() as RenderBox;
  final Offset offset = button.localToGlobal(Offset.zero);

  final value = await showMenu<String>(
    context: context,
    position: RelativeRect.fromLTRB(
      offset.dx + button.size.width, // Left
      offset.dy + 70, // Top
      MediaQuery.of(context).size.width - offset.dx, // Right
      0, // Bottom
    ),
    items: [
      PopupMenuItem<String>(
        value: 'Option1',
        child: Container(
          width: 110, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('Linked Devices', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
      PopupMenuItem<String>(
        value: 'Option2',
        child: Container(
          width: 110, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('Starred Messages', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
      PopupMenuItem<String>(
        value: 'Option3',
        child: Container(
          width: 110, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('Settings', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
    ],
  );

  if (value == 'Option1') {
    // Perform action for item1
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LinkedDevicesScreen()));
  } else if (value == 'Option2') {
    // Perform action for item2
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const starredMessagesScreen()));
  } else if (value == 'Option3') {
    // Navigate to SettingsScreen
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
  }
}
