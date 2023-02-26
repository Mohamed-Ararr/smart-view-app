// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartviewapp/Features/SplashScreen/Presentation/Widgets/appTitle.dart';
import 'package:smartviewapp/constants.dart';

import 'appSlogan.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(logo),
            const SizedBox(height: 20),
            const AppTitle(),
            const SizedBox(height: 20),
            const AppSlogan(),
          ],
        ),
      ),
    );
  }
}
