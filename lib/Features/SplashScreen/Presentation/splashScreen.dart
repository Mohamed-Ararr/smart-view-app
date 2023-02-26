// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/homeScreen.dart';

import 'Widgets/splashScreenBody.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () => const HomeScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreenBody();
  }
}
