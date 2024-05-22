import 'package:flutter/material.dart';

class MessageCardClass {
  Image userPhoto;
  String userName;
  String lastMessage;
  String lastMessageTime;
  bool isYourMessageLast;
  bool isYourMessageChecked;

  MessageCardClass({
    required this.userPhoto,
    required this.userName,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.isYourMessageLast,
    required this.isYourMessageChecked,
  });
}
