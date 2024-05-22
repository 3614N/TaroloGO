import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/text_colors.dart';

Icon hearts(bool isTapped) {
  return isTapped
      ? const Icon(Icons.favorite, color: yellowText)
      : const Icon(Icons.favorite_outline, color: yellowText);
}
