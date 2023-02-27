// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartviewapp/Core/colors.dart';
import 'package:smartviewapp/Core/fontOpt.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/homeAppBar.dart';
import 'package:smartviewapp/constants.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingRL,
            child: Column(
              children: const [HomeAppBar()],
            ),
          ),
        ),
      ),
    );
  }
}
