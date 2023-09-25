import 'package:flutter/material.dart';

class MoreVertMenu extends StatelessWidget {
  const MoreVertMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        if (value == 'item1') {
          // Perform action for item1
        } else if (value == 'item2') {
          // Perform action for item2
        } else if (value == 'item3') {
          // Perform action for item3
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'item1',
          child: ListTile(
            title: Text(
              'Item 1',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 0, 0), // Set text color
              ),
            ),
            tileColor: Colors.blue, // Set background color
            contentPadding: EdgeInsets.symmetric(horizontal: 16), // Adjust padding
          ),
        ),
        const PopupMenuItem<String>(
          value: 'item2',
          child: ListTile(
            title: Text(
              'Item 2',
              style: TextStyle(
                color: Colors.white, // Set text color
              ),
            ),
            tileColor: Colors.green, // Set background color
            contentPadding: EdgeInsets.symmetric(horizontal: 16), // Adjust padding
          ),
        ),
        const PopupMenuItem<String>(
          value: 'item3',
          child: ListTile(
            title: Text(
              'Item 3',
              style: TextStyle(
                color: Colors.white, // Set text color
              ),
            ),
            tileColor: Colors.orange, // Set background color
            contentPadding: EdgeInsets.symmetric(horizontal: 16), // Adjust padding
          ),
        ),
      ],
      offset: const Offset(0, 50), // Adjust the position to the right
    );
  }
}

Future<void> showMoreVertMenu(BuildContext context) async {
  final value = await showMenu<String>(
    context: context,
    position: RelativeRect.fill,
    items: const [
      PopupMenuItem<String>(
        value: 'item1',
        child: Text('Item 1'),
      ),
      PopupMenuItem<String>(
        value: 'item2',
        child: Text('Item 2'),
      ),
      PopupMenuItem<String>(
        value: 'item3',
        child: Text('Item 3'),
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
