// ignore_for_file: prefer_const_constructors

import 'package:go_router/go_router.dart';
import 'package:tarologo/styles/colors/text_colors.dart';
import 'package:tarologo/styles/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Color(0xFF1A1A1A),
        items: [
          SalomonBottomBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            title: Text('Search'),
            unselectedColor: yellowText,
            selectedColor: yellowText,
          ),
          SalomonBottomBarItem(
            icon: Icon(
              Icons.favorite_outline,
            ),
            activeIcon: Icon(
              Icons.favorite,
            ),
            title: Text('Favorites'),
            unselectedColor: yellowText,
            selectedColor: yellowText,
          ),
          SalomonBottomBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
            ),
            activeIcon: Icon(
              Icons.chat_bubble,
            ),
            title: Text('Chat'),
            unselectedColor: yellowText,
            selectedColor: yellowText,
          ),
          SalomonBottomBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            activeIcon: Icon(
              Icons.person,
            ),
            title: Text('Profile'),
            unselectedColor: yellowText,
            selectedColor: yellowText,
          ),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        ),
      ),
    );
  }
}
