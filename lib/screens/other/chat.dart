// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/colors/text_colors.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
            children: [],
          ),
        ),
      ),
    );
  }
}
