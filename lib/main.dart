import 'package:tarologo/routing/app_routing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TaroloGO());
}

class TaroloGO extends StatelessWidget {
  const TaroloGO({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
