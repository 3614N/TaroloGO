// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/colors/text_colors.dart';
import 'package:tarologo/test_lists/message_list.dart';
import 'package:tarologo/widgets/chat_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Widget> generateChats(int count) {
    return List.generate(
      count,
      (index) => ChatWidget(
          userPhoto: messageCards[index].userPhoto,
          userName: messageCards[index].userName,
          lastMessage: messageCards[index].lastMessage,
          lastMessageTime: messageCards[index].lastMessageTime,
          isYourMessageLast: messageCards[index].isYourMessageLast,
          isYourMessageChecked: messageCards[index].isYourMessageChecked,
          context: context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyGood,
      appBar: AppBar(
        surfaceTintColor: greyGood,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            child: TextField(
              cursorColor: yellowText,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: lightGreyGood),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: lightGreyGood),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: yellowText,
                ),
                fillColor: lightGreyGood,
                filled: true,
              ),
            ),
          ),
        ),
        backgroundColor: greyGood,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: generateChats(messageCards.length),
          ),
        ),
      ),
    );
  }
}
