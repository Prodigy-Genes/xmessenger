// ignore_for_file: library_private_types_in_public_api, annotate_overrides

import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  final List<String> message;
  final List<bool> isUserMessage;
  final ScrollController scrollController;
  final List<String> messageStatus;
  final List<String> messageTimestamp;

  const Messages({
    Key? key,
    required this.message,
    required this.scrollController,
    required this.isUserMessage,
    required this.messageStatus,
    required this.messageTimestamp,
  }) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  late List<bool> selectedMessages = [];
  bool isSelectionModeActive = false;

  @override
  void initState() {
    super.initState();
    selectedMessages = List.generate(widget.message.length, (index) => false);
  }

  void didUpdateWidget(covariant Messages oldwidget){
    super.didUpdateWidget(oldwidget);
    if (widget.message.length != selectedMessages.length){
      setState(() {
        selectedMessages = List.generate(widget.message.length, (index) => false);
        isSelectionModeActive = false;
      });
    }
  }

  void _onLongPress(int index) {
    setState(() {
      selectedMessages[index] = !selectedMessages[index];
      isSelectionModeActive = selectedMessages.any((isSelected) => isSelected);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.message.length,
      controller: widget.scrollController,
      itemBuilder: (BuildContext context, int index) {
        bool isUser = widget.isUserMessage[index];
        String status = widget.messageStatus[index];
        String timestamp = widget.messageTimestamp[index];
        bool isSelected = selectedMessages[index];

        return Align(
          alignment: isUser ? Alignment.topRight : Alignment.topLeft,
          child: GestureDetector(
            onLongPress: () => _onLongPress(index),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              padding: const EdgeInsets.all(12),
              width: 150,
              decoration: BoxDecoration(
                color: isUser
                    ? (isSelected ? Colors.green : const Color.fromARGB(255, 137, 123, 0))
                    : (isSelected ? Colors.green : Colors.blueGrey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.message[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  if (isUser) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          timestamp,
                          style: const TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                        const SizedBox(width: 11),
                        if (status == 'Delivered')
                          const Icon(
                            Icons.done_all,
                            size: 14,
                            color: Colors.white24,
                          )
                        else if (status == 'Sent')
                          const Icon(
                            Icons.check,
                            size: 14,
                            color: Colors.white24,
                          )
                        else if (status == 'Seen')
                          const Icon(
                            Icons.done_all,
                            size: 14,
                            color: Colors.blueAccent,
                          )
                      ],
                    ),
                  ] else ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          timestamp,
                          style: const TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                      ],
                    ),
                  ]
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
