// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/fontOpt.dart';
import 'exploreCategoriesListView.dart';

class ExploreCategories extends StatelessWidget {
  const ExploreCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Explore Categories",
          style: FontOpt.regularText,
        ),
        const SizedBox(height: 10),
        const ExploreCategoriesListView(),
      ],
    );
  }
}
