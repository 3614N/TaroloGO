// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:tarologo/screens/other/service/tarot_screen.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/styles/colors/text_colors.dart';
import 'package:flutter/material.dart';
import 'package:tarologo/styles/icons/icons.dart';

// ignore: must_be_immutable
class ServiceCard extends StatefulWidget {
  final Image tarotPhoto;
  final String tarotName;
  final String tarotDescription;
  final int reviewCount;
  final double rating;
  bool isLiked;

  ServiceCard({
    super.key,
    required this.tarotPhoto,
    required this.tarotName,
    required this.tarotDescription,
    required this.reviewCount,
    required this.rating,
    required this.isLiked,
    required BuildContext context,
  });
  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TarotScreen()));
          });
        },
        child: Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: lightGreyGood,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FittedBox(
                        child: widget.tarotPhoto,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            widget.tarotName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Flexible(
                            child: Expanded(
                              child: Text(
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                widget.tarotDescription,
                                style:
                                    TextStyle(color: yellowText, fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              '${widget.reviewCount} отзывов',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Text(
                              widget.rating.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                //fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.isLiked = !widget.isLiked;
                    });
                  },
                  child: Container(
                      alignment: Alignment.topCenter,
                      height: 150,
                      child: hearts(widget.isLiked)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
