import 'package:flutter/material.dart';

class MessageCard {
  Image userPhoto;
  String userName;
  String lastMessage;
  String lastMessageTime;
  bool isYourMessageLast;
  bool isYourMessageChecked;

  MessageCard({
    required this.userPhoto,
    required this.userName,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.isYourMessageLast,
    required this.isYourMessageChecked,
  });
}
