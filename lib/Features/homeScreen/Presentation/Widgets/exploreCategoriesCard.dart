// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/colors.dart';
import '../../../../constants.dart';

class ExploreCategoriesCard extends StatelessWidget {
  const ExploreCategoriesCard({super.key, required this.phoneCateg});

  final String phoneCateg;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: kBorderR,
      ),
      margin: const EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          const Spacer(),
          Image.asset("assets/images/iphone-category.png"),
          const Spacer(),
          Text(phoneCateg),
          const Spacer(),
        ],
      ),
    );
  }
}
