// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tarologo/classes/message.dart';
import 'package:tarologo/screens/chat/chat.dart' as screen_chat;
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/text_styles/text_styles.dart';
import 'package:tarologo/styles/widgets/good_line.dart';
import 'package:tarologo/test_lists/chat.dart';
import 'package:tarologo/test_lists/tarot_profile.dart';

// ignore: must_be_immutable
class ContactMessage extends StatefulWidget {
  int senderId;
  int index;
  ContactMessage({
    super.key,
    required this.index,
    required this.senderId,
  });

  @override
  State<ContactMessage> createState() => _ContactMessageState();
}

class _ContactMessageState extends State<ContactMessage> {
  List<Message> compileAndSort(Chat chat) {
    List<Message> allMessages = [
      ...chat.receivedMessages,
      ...chat.sentMessages
    ];

    allMessages.sort((a, b) {
      DateTime dateTimeA = DateTime.parse(a.time);
      DateTime dateTimeB = DateTime.parse(b.time);
      return dateTimeA.compareTo(dateTimeB);
    });

    return allMessages;
  }

  int countLastMessagesFromSender(List<Message> messages, int senderId) {
    int count = 0;
    for (int i = messages.length - 1; i >= 0; i--) {
      if (messages[i].senderId == senderId) {
        count++;
      } else {
        break;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => Chat(
      //               id: widget.id,
      //             )),
      //   );
      // },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 10,
        ),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset(
                                profiles[widget.senderId - 1].photo),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${profiles[widget.senderId - 1].firstName} ${profiles[widget.senderId - 1].secondName}',
                              style: allChatsName,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Text(
                                compileAndSort(allChats[widget.index])
                                    .last
                                    .text,
                                overflow: TextOverflow.ellipsis,
                                style: allChatsMessage,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          compileAndSort(allChats[widget.index])
                                      .last
                                      .senderId ==
                                  3
                              ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 12,
                                )
                              : SizedBox(),
                          Text(
                            '20:31',
                            style: allChatsTime,
                          ),
                        ],
                      ),
                      compileAndSort(allChats[widget.index]).last.senderId != 3
                          ? Container(
                              alignment: Alignment.center,
                              width: 25,
                              height: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: lightGreyGood),
                              child: Text(
                                countLastMessagesFromSender(
                                        compileAndSort(allChats[widget.index]),
                                        1)
                                    .toString(),
                                style: allChatsLastMessagesCounter,
                              ),
                            )
                          : Container(
                              alignment: Alignment.center,
                              width: 25,
                              height: 16,
                            )
                    ],
                  )
                ],
              ),
            ),
            goodLine,
          ],
        ),
      ),
    );
  }
}
