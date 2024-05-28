// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tarologo/classes/tarot.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/colors/text_colors.dart';
import 'package:tarologo/styles/text_styles/text_styles.dart';

// ignore: must_be_immutable
class TarotService extends StatelessWidget {
  Service service;

  TarotService({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: lightGreyGood,
        ),
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      service.serviceName,
                      style: TextStyle(
                        color: yellowText,
                      ),
                    ),
                    Text(
                      '${service.price}₽',
                      style: TextStyle(
                        color: yellowText,
                      ),
                    ),
                  ],
                ),
                Text(
                  service.serviceDescription,
                  style: TextStyle(
                    color: Color(0xFF827F7F),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
