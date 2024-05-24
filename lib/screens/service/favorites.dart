import 'package:flutter/material.dart';
import 'package:tarologo/styles/colors/main_colors.dart';
import 'package:tarologo/test_lists/tarot_profile.dart';
import 'package:tarologo/widgets/profile/tarot_services.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<Widget> generateServices(int count) {
    return List.generate(
        count,
        (index) => ServiceCard(
              context: context,
              id: profiles[index].id,
              photo: profiles[index].photo,
              firstName: profiles[index].firstName,
              secondName: profiles[index].secondName,
              username: profiles[index].username,
              description: profiles[index].description,
              reviewCount: profiles[index].reviewCount,
              rating: profiles[index].rating,
              isLiked: profiles[index].isLiked,
              services: profiles[index].services,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyGood,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: generateServices(profiles.length),
          ),
        ),
      ),
    );
  }
}
