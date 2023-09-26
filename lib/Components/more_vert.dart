import 'package:flutter/material.dart';

class MoreVertMenu extends StatelessWidget {
  const MoreVertMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        if (value == 'Linked Devices') {
          // Perform action for item1
        } else if (value == 'Starred Messages') {
          // Perform action for item2
        } else if (value == 'Settings') {
          // Perform action for item3
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
          value: 'Option 1',
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
      offset.dx+button.size.width, // Left
      offset.dy+70, // Top
      MediaQuery.of(context).size.width - offset.dx , // Right
      0, // Bottom
    ),
    items: [
      PopupMenuItem<String>(
        value: 'option1',
        child: Container(
          width: 110, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('Linked Devices', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
      PopupMenuItem<String>(
        value: 'option2',
        child: Container(
          width: 110, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('Starred Messages', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
      PopupMenuItem<String>(
        value: 'option3',
        child: Container(
          width: 110, // Customize the width
          padding: const EdgeInsets.all(15),
          child: const Text('Settings', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
      
    ],
  );

  if (value == 'item1') {
    // Perform action for item1
  } else if (value == 'item2') {
    // Perform action for item2
  } else if (value == 'item3') {
    // Perform action for item3
  }
}
