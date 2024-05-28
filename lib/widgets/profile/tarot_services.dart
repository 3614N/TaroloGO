// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:tarologo/classes/tarot.dart';
import 'package:tarologo/screens/service/tarot_screen.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              setState(
                () {
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
                },
              );
            },
            child: BlurryContainer(
              child: BlurryContainer(
                width: double.infinity,
                height: 150,
                color: lightGreyGood.withOpacity(0.5),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.asset(widget.photo),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              '${widget.firstName} ${widget.secondName}',
                              style: serviceCardTarotName,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: Text(
                                widget.description,
                                style: tarotServiceDesctiption,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 18,
            top: 23,
            child: SizedBox(
              height: 128,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.yellow,
                  ),
                  Row(
                    children: [
                      Text(
                        '${widget.reviewCount} отзывов',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Row(
                          children: [
                            Text(
                              '${widget.rating}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2.5),
                              child: Icon(
                                Icons.star_rate_rounded,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
