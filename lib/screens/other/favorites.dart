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
              tarotPhoto: profiles[index].tarotPhoto,
              tarotFirstName: profiles[index].tarotFirstName,
              tarotSecondName: profiles[index].tarotSecondName,
              tarotNickname: profiles[index].tarotNickname,
              tarotDescription: profiles[index].tarotDescription,
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
