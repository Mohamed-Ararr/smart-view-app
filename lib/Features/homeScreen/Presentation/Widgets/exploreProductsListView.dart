import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/exploreProductsCard.dart';

import '../../../../Core/colors.dart';
import '../../../../constants.dart';

class ExploreProductsListView extends StatelessWidget {
  const ExploreProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.45,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const ExploreProductCard();
        },
      ),
    );
  }
}
