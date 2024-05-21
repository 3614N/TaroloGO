import 'package:tarologo/routing/app_routing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppTodo());
}

class AppTodo extends StatelessWidget {
  const AppTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
