// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  final int senderId;
  final String text;
  final String time;
  const Message(
      {super.key,
      required this.senderId,
      required this.text,
      required this.time});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: widget.senderId == 3
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: widget.senderId == 3
                    ? Color(0xFF483D8B)
                    : Color(0xFF2D2D2D),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft:
                      widget.senderId == 3 ? Radius.circular(20) : Radius.zero,
                  bottomRight:
                      widget.senderId != 3 ? Radius.circular(20) : Radius.zero,
                ),
              ),
              constraints: BoxConstraints(maxWidth: 300),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.text,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      widget.time.substring(11, 16),
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
