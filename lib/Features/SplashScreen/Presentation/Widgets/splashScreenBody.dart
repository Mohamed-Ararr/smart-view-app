// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartviewapp/Core/fontOpt.dart';
import 'package:smartviewapp/constants.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(logo),
            const SizedBox(height: 20),
            Text(
              "Smart View",
              style: FontOpt.titleHeadLine,
            ),
            const SizedBox(height: 20),
            Text("Your go-to source for smartphones information"),
          ],
        ),
      ),
    );
  }
}
