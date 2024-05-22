// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/colors/text_colors.dart';
import 'package:tarologo/widgets/line.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                  height: 45,
                  child: Column(
                    children: [goodLine],
                  ),
                ),
                Container(
                  height: 45,
                  child: Column(
                    children: [goodLine],
                  ),
                ),
                Container(
                  height: 45,
                  child: Column(
                    children: [goodLine],
                  ),
                ),
                Container(
                  child: Column(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
