// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartviewapp/Core/colors.dart';
import 'package:smartviewapp/Core/fontOpt.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/exploreProducts.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/exploreProductsListView.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                const SizedBox(height: 20),
                const ExploreProducts(),
                const SizedBox(height: 30),
                Text(
                  "Best Seller",
                  style: FontOpt.regularText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
