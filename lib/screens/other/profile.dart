// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/colors/text_colors.dart';
import 'package:tarologo/styles/widgets/good_line.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyGood,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              color: lightGreyGood,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 45, 20, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        //size: 30,
                        color: Colors.white,
                      ),
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.white),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: FittedBox(
                            child: Image.asset(
                                'assets/profile_photo/SLONYARA.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.edit_outlined,
                        //size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Миньон Слонярович',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '@minyonchik',
                  style: TextStyle(
                    color: yellowText,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 8, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '+7(800)555-35-35',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Номер телефона',
                              style: TextStyle(
                                color: Color(0xFF8C8C8C),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      goodLine
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 8, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'zazastore@mail.ru',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Почта',
                              style: TextStyle(
                                color: Color(0xFF8C8C8C),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      goodLine
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 8, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '11.09.2001',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Дата рождения',
                              style: TextStyle(
                                color: Color(0xFF8C8C8C),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      goodLine
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 8, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'базированный миньон слонярович',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Биография',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 6.5,
                        ),
                        goodLine,
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
