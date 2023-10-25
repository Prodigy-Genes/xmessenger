// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class InChat_MoreVertMenu extends StatelessWidget {
  const InChat_MoreVertMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        if (value == '1') {
          // Perform action for item1
        } else if (value == '2') {
          // Perform action for item2
        } else if (value == '3') {
          // Perform action for item3
        } else if (value == '4') {
          // Perform action for item4
        } else if (value == '5') {
          // Perform action for item5
        } else if (value == '6') {
          // Perform action for item6
        } else if (value == '7') {
          // Perform action for item7
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: '1',
          child: Text('View Contact'),
        ),
        const PopupMenuItem<String>(
          value: '2',
          child: Text('Media, Links && Files'),
        ),
        const PopupMenuItem<String>(
          value: '3',
          child: Text('Search'),
        ),
        const PopupMenuItem<String>(
          value: '4',
          child: Text('Mute Notifications'),
        ),
        const PopupMenuItem<String>(
          value: '5',
          child: Text('Disappearing Messages'),
        ),
        const PopupMenuItem<String>(
          value: '6',
          child: Text('Wallpaper'),
        ),
        const PopupMenuItem<String>(
          value: '7',
          child: Text('More...'),
        ),
      ],
    );
  }
}

Future<void> showInChatMoreVertMenu(BuildContext context) async {
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
        value: '1',
        child: Container(
          width: 130, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('View contact', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
      PopupMenuItem<String>(
        value: '2',
        child: Container(
          width: 130, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('Media, Links && Files', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
      PopupMenuItem<String>(
        value: '3',
        child: Container(
          width: 130, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('Search', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
      PopupMenuItem<String>(
        value: '4',
        child: Container(
          width: 130, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('Mute Notifcations', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
      PopupMenuItem<String>(
        value: '5',
        child: Container(
          width: 130, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('Disappearing Messages', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
      PopupMenuItem<String>(
        value: '6',
        child: Container(
          width: 110, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('Wallpaper', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
      PopupMenuItem<String>(
        value: '7',
        child: Container(
          width: 130, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('More...', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
    ],
  );

  if (value == '1') {
    // Perform action for item1
    
  } else if (value == '2') {
    // Perform action for item2
    
  } else if (value == '3') {
    // Perform action for item3
  } else if (value == '4') {
    // Perform action for item4
  } else if (value == '5') {
    // Perform action for item5
  } else if (value == '6') {
    // Perform action for item6
  } else if (value == '7') {
    // Perform action for item7
  }
}