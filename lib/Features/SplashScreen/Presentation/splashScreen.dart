// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smartviewapp/Core/utils/routing.dart';

import 'Widgets/splashScreenBody.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => GoRouter.of(context).push(Routing.homeScreen),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreenBody();
  }
}
