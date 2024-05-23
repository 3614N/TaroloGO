// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/colors/text_colors.dart';

// ignore: must_be_immutable
class ChatWidget extends StatefulWidget {
  Image userPhoto;
  String userName;
  String lastMessage;
  String lastMessageTime;
  bool isYourMessageLast;
  bool isYourMessageChecked;

  ChatWidget({
    super.key,
    required this.userPhoto,
    required this.userName,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.isYourMessageLast,
    required this.isYourMessageChecked,
    required BuildContext context,
  });
  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: lightGreyGood,
                        shape: BoxShape.circle,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: FittedBox(
                          child: widget.userPhoto,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.userName,
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: Flexible(
                            child: Expanded(
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                widget.lastMessage,
                                style: TextStyle(color: Color(0xFF8C8C8C)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: SizedBox(
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        widget.lastMessageTime,
                        style: TextStyle(color: yellowText, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 0.5,
          color: lightGreyGood,
        )
      ],
    );
  }
}
