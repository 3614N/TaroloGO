// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/colors/text_colors.dart';
import 'package:tarologo/widgets/profile_service_widget.dart';

class TarotScreen extends StatefulWidget {
  const TarotScreen({super.key});

  @override
  State<TarotScreen> createState() => _TarotScreenState();
}

class _TarotScreenState extends State<TarotScreen> {
  List<Widget> generateTarotServiceCards(int count) {
    return List<Widget>.generate(count, (index) => const TarotServiceCard());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyGood,
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
                      blur: 10,
                      color: greyGood.withOpacity(0.9),
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
                          SizedBox(
                            height: 16,
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          //   child: Container(
                          //     width: double.infinity,
                          //     height: 1,
                          //     color: Colors.white.withOpacity(0.1),
                          //   ),
                          // ),
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
                            child: Container(
                              width: double.infinity,
                              height: 1,
                              color: lightGreyGood,
                            ),
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
                                  'Гадаю на на картах таро, опыт 32 года, привороты, увороты, подвороты. Специалист по жизни, советчик и программист.',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: lightGreyGood,
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    children: generateTarotServiceCards(10),
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
          ],
        ),
      ),
    );
  }
}
