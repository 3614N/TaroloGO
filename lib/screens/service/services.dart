// ignore_for_file: prefer_const_constructors

import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/colors/text_colors.dart';
import 'package:tarologo/test_lists/service_list.dart';
import 'package:tarologo/widgets/service_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Widget> generateServices(int count) {
    return List.generate(
        count,
        (index) => ServiceCard(
              context: context,
              tarotPhoto: serviceCards[index].tarotPhoto,
              tarotName: serviceCards[index].tarotName,
              tarotDescription: serviceCards[index].tarotDescription,
              reviewCount: serviceCards[index].reviewCount,
              rating: serviceCards[index].rating,
              isLiked: serviceCards[index].isLiked,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyGood,
      appBar: AppBar(
        surfaceTintColor: greyGood,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            child: TextField(
              cursorColor: yellowText,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: lightGreyGood),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: lightGreyGood),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: yellowText,
                ),
                suffixIcon: Icon(
                  Icons.filter_list_rounded,
                  color: yellowText,
                ),
                fillColor: lightGreyGood,
                filled: true,
              ),
            ),
          ),
        ),
        backgroundColor: greyGood,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: generateServices(10),
          ),
        ),
      ),
    );
  }
}
