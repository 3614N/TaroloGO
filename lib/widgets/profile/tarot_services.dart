// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:tarologo/classes/tarot.dart';
import 'package:tarologo/screens/service/tarot_screen.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:flutter/material.dart';
import 'package:tarologo/styles/icons/icons.dart';
import 'package:tarologo/styles/text_styles/text_styles.dart';

// ignore: must_be_immutable
class ServiceCard extends StatefulWidget {
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

  ServiceCard({
    super.key,
    required this.id,
    required this.photo,
    required this.firstName,
    required this.secondName,
    required this.username,
    required this.description,
    required this.reviewCount,
    required this.rating,
    required this.isLiked,
    required this.services,
    required BuildContext context,
  });
  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 8),
      child: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => TarotProfile(
                    id: widget.id,
                    photo: widget.photo,
                    firstName: widget.firstName,
                    secondName: widget.secondName,
                    username: widget.username,
                    description: widget.description,
                    reviewCount: widget.reviewCount,
                    rating: widget.rating,
                    isLiked: widget.isLiked,
                    services: widget.services),
              ),
            );
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
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FittedBox(
                        child: Image.asset(widget.photo),
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
                            '${widget.firstName} ${widget.secondName}',
                            style: serviceCardTarotName,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Flexible(
                            child: Expanded(
                              child: Text(
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                widget.description,
                                style: serviceCardTarotDescription,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Row(
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
