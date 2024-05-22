// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/colors/text_colors.dart';

class TarotScreen extends StatefulWidget {
  const TarotScreen({super.key});

  @override
  State<TarotScreen> createState() => _TarotScreenState();
}

class _TarotScreenState extends State<TarotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              height: 350,
              width: double.infinity,
              child: Image.asset(
                'assets/tarot_photos/3.jpg',
                fit: BoxFit
                    .cover, // this line makes the image cover the whole screen
              ),
            ),
            Positioned(
              top: 200,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  BlurryContainer(
                    blur: 10,
                    color: greyGood.withOpacity(0.9), // Corrected opacity value
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 3),
                          child: Text(
                            'Апполинария Тёмная',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Text(
                          '@minonch1k',
                          style: TextStyle(
                            color: yellowText,
                            fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                          child: Container(
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
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
