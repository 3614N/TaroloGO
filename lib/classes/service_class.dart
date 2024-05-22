//класс карточки таролога

import 'package:flutter/material.dart';

class ServiceCardClass {
  Image tarotPhoto;
  String tarotName;
  String tarotDescription;
  int reviewCount;
  double rating;
  bool isLiked;

  ServiceCardClass({
    required this.tarotPhoto,
    required this.tarotName,
    required this.tarotDescription,
    required this.reviewCount,
    required this.rating,
    required this.isLiked,
  });
}
