import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/test_lists/service_list.dart';
import 'package:tarologo/widgets/service_widget.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<Widget> generateServices(int count) {
    return List.generate(
        count,
        (index) => ServiceCard(
              context: context,
              tarotPhoto: likedServiceCards[index].tarotPhoto,
              tarotName: likedServiceCards[index].tarotName,
              tarotDescription: likedServiceCards[index].tarotDescription,
              reviewCount: likedServiceCards[index].reviewCount,
              rating: likedServiceCards[index].rating,
              isLiked: likedServiceCards[index].isLiked,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyGood,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: generateServices(likedServiceCards.length),
          ),
        ),
      ),
    );
  }
}
