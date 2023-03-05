// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/exploreCategoriesCard.dart';

class ExploreCategoriesListView extends StatelessWidget {
  const ExploreCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.45,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: phoneCategories.length,
        itemBuilder: (context, index) {
          return ExploreCategoriesCard(phoneCateg: phoneCategories[index]);
        },
      ),
    );
  }
}

List<String> phoneCategories = [
  "Apple",
  "Samsung",
  "Xiomi",
  "Oppo",
  "Huawei",
];
