import 'package:flutter/material.dart';

import '../../../../Core/colors.dart';
import '../../../../constants.dart';

class ExploreProductCard extends StatelessWidget {
  const ExploreProductCard({super.key});

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
          const Text("Phone"),
          const Spacer(),
        ],
      ),
    );
  }
}
