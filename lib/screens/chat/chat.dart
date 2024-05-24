import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  int id;
  Chat({
    super.key,
    required this.id,
  });

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Text(
        widget.id.toString(),
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
