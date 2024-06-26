// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tarologo/screens/other/profile.dart';
import 'package:tarologo/test_lists/profile.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _mailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF1A1A1A),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/logo/logo.svg'),
              BlurryContainer(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.58,
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                blur: 10,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFFFFFDD0),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email or phone number',
                            style: TextStyle(
                              color: Color(0xFF827F7F),
                            ),
                          ),
                          TextField(
                            controller: _mailController,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              color: Color(0xFF827F7F),
                            ),
                          ),
                          TextField(
                            controller: _passwordController,
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: Text(
                          'forgot your password?',
                          style: TextStyle(
                            color: Color(0xFF827F7F),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () async {
                          var response = await http.get(Uri.parse(
                              'https://8420-178-66-156-71.ngrok-free.app/'
                              'message/show_chat/${_mailController.text}/'
                              'recipient/${_passwordController.text}'));
                          var jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));

                          for (var message in jsonResponse) {
                            var messageId = message['message_id'];
                            var senderId = message['sender_id'];
                            var recipientId = message['recipient_id'];
                            var messageText = message['message_text'];
                            var messageDateSend = message['message_date_send'];

                            print("Message ID: $messageId");
                            print("Sender ID: $senderId");
                            print("Recipient ID: $recipientId");
                            print("Message Text: $messageText");
                            print("Message Date Send: $messageDateSend");
                          };

                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFDD0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF1C0E22),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
