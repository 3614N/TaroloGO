// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:tarologo/classes/tarot.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/colors/text_colors.dart';
import 'package:tarologo/styles/widgets/good_line.dart';
import 'package:tarologo/widgets/profile/profile_service_card.dart';

// ignore: must_be_immutable
class TarotProfile extends StatefulWidget {
  final int id;
  final String photo;
  final String firstName;
  final String secondName;
  final String username;
  final String description;
  final int reviewCount;
  final double rating;
  bool isLiked;
  List<Service> services;

  TarotProfile(
      {super.key,
      required this.id,
      required this.photo,
      required this.firstName,
      required this.secondName,
      required this.username,
      required this.description,
      required this.reviewCount,
      required this.rating,
      required this.isLiked,
      required this.services});

  @override
  State<TarotProfile> createState() => _TarotProfileState();
}

class _TarotProfileState extends State<TarotProfile> {
  List<Widget> generateTarotServiceCards(int count) {
    return List<Widget>.generate(
        count, (index) => TarotService(service: widget.services[index]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyGood,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              height: 350,
              width: double.infinity,
              child: Image.asset(
                widget.photo,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 250,
                    ),
                    BlurryContainer(
                      blur: 20,
                      color: greyGood.withOpacity(0.7),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 2),
                            child: Text(
                              '${widget.firstName} ${widget.secondName}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Text(
                            widget.username,
                            style: TextStyle(
                              color: yellowText,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 40,
                            child: Text(
                              'Написать сообщение',
                              style: TextStyle(
                                color: yellowText,
                                fontSize: 18,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: lightGreyGood,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: goodLine,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Биография',
                                  style: TextStyle(
                                      color: yellowText, fontSize: 18),
                                ),
                                Text(
                                  widget.description,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: goodLine,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    children: generateTarotServiceCards(
                                        widget.services.length),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: lightGreyGood,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
