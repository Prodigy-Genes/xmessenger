import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: message.length,
      controller: scrollController,
      itemBuilder: (BuildContext context, int index) {
        bool isUser = isUserMessage[index];
        String status = messageStatus[index];
        String timestamp = messageTimestamp[index];

        return Align(
          alignment: isUser ? Alignment.topRight : Alignment.topLeft,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            padding: const EdgeInsets.all(12),
            width: 150,
            decoration: BoxDecoration(
              color: isUser ? const Color.fromARGB(255, 137, 123, 0) : Colors.blueGrey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message[index],
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
                ]

                else ...[
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
        );
      },
    );
  }
}
