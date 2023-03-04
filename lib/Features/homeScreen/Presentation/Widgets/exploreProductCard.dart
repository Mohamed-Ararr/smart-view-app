// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smartviewapp/Core/utils/routing.dart';

import '../../../../Core/colors.dart';
import '../../../../Core/fontOpt.dart';
import '../../../../constants.dart';

class ExploreProductsCard extends StatelessWidget {
  const ExploreProductsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(Routing.phoneScreen),
      child: Container(
        padding: kPaddingRL,
        decoration: BoxDecoration(
          borderRadius: kBorderR,
          color: AppColors.cardColor,
        ),
        child: Column(
          children: [
            const Spacer(),
            Container(
              width: 150,
              height: 150,
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: kBorderR,
                color: AppColors.mainColor,
              ),
              child: Image.asset("assets/images/iphone-category.png"),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Iphone 13 pro max"),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("499.99 \$", style: FontOpt.regularBold),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}