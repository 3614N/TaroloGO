// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';

class Chat extends StatefulWidget {
  const Chat({
    super.key,
  });

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
        title: Row(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('assets/tarot_photos/2.jpg'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Апполинария Темная',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
      backgroundColor: greyGood,
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
