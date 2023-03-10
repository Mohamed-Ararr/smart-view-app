// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/exploreProductsGridView.dart';

import '../../../../Core/fontOpt.dart';

class ExploreProducts extends StatelessWidget {
  const ExploreProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Explore Products",
          style: FontOpt.regularText,
        ),
        const SizedBox(height: 10),
        const ExploreProductsGridView(),
      ],
    );
  }
}
