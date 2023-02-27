// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Core/colors.dart';
import 'package:smartviewapp/Core/fontOpt.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/exploreCategories.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/homeAppBar.dart';
import 'package:smartviewapp/constants.dart';

import 'exploreProducts.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: kPaddingRL,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                HomeAppBar(),
                SizedBox(height: 20),
                ExploreCategories(),
                SizedBox(height: 30),
                ExploreProducts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
