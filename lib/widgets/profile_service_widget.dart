// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';

class TarotServiceCard extends StatelessWidget {
  const TarotServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: lightGreyGood,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Название услуги',
                    style: TextStyle(
                      color: Color(0xFF827F7F),
                    ),
                  ),
                  Text(
                    'Описание',
                    style: TextStyle(
                      color: Color(0xFF827F7F),
                    ),
                  )
                ],
              ),
              Text(
                '500р',
                style: TextStyle(
                  color: Color(0xFF827F7F),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
