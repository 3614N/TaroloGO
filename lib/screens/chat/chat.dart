// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/test_lists/chat.dart';
import 'package:tarologo/test_lists/tarot_profile.dart';
import 'package:tarologo/widgets/messenger/message.dart';

class Chat extends StatefulWidget {
  final int chatId;
  const Chat({super.key, required this.chatId});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: greyGood,
        backgroundColor: greyGood,
        leading: IconButton(
            onPressed: () {
              context.push('/messenger');
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
          '${profiles[widget.chatId].firstName} '
          '${profiles[widget.chatId].secondName}',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      backgroundColor: greyGood,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: generateMessages(allChats[widget.chatId].length),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              color: greyGood,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.attachment_outlined,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 40,
                      decoration: BoxDecoration(
                        color: lightGreyGood,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            focusColor: greyGood,
                            border: InputBorder.none,
                          ),
                          cursorColor: greyGood,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
