// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/test_lists/tarot_profile.dart';

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
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(90)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(widget.senderId == 3
                      ? 'assets/profile_photo/vova.png'
                      : profiles[widget.senderId - 1].photo),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.senderId == 3
                            ? 'Миньончик'
                            : '${profiles[widget.senderId - 1].firstName} ${profiles[widget.senderId - 1].secondName}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.time.substring(11, 16),
                        style: TextStyle(color: lightGreyGood),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        color: Colors.grey[200],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
