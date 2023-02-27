// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'exploreProductCard.dart';

class ExploreProductsGridView extends StatelessWidget {
  const ExploreProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3 / 4,
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const ExploreProductsCard();
      },
    );
  }
}
