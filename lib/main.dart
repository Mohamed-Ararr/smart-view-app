import 'package:flutter/material.dart';
import 'package:smartviewapp/Core/colors.dart';
import 'package:smartviewapp/Core/utils/routing.dart';

void main() {
  runApp(const SmartViewApp());
}

class SmartViewApp extends StatelessWidget {
  const SmartViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routing.routes,
      theme: ThemeData(
        fontFamily: "Montserrat",
        brightness: Brightness.dark,
        canvasColor: AppColors.mainColor,
      ),
    );
  }
}
