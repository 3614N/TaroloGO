// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/test_lists/chat.dart';
import 'package:tarologo/widgets/messenger/message.dart';

class Chat extends StatefulWidget {
  final int chatId;
  const Chat({super.key, required this.chatId});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final ScrollController _scrollController = ScrollController();

  List<Widget> generateMessages(int count) {
    return List.generate(
        count,
        (index) => Message(
              senderId: allChats[widget.chatId][index].senderId,
              text: allChats[widget.chatId][index].text,
              time: allChats[widget.chatId][index].time,
            ));
  }

  @override
  void initState() {
    super.initState();
    // Scroll to the end of the list when the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greyGood,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            iconSize: 28,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        title: Text(
          'Апполинария Темная',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      backgroundColor: greyGood,
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: generateMessages(allChats[widget.chatId].length),
        ),
      ),
    );
  }
}
