// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../Features/homeScreen/Data/Models/phone_model/phone_model/phone_model.dart';
import '../../Features/homeScreen/Presentation/Widgets/exploreProductCard.dart';
import '../../constants.dart';
import '../fontOpt.dart';

class BuildSuggestions extends StatelessWidget {
  const BuildSuggestions({super.key, required this.phones});

  final List<PhoneModel> phones;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "Suggestions",
            style: FontOpt.regularBoldWhite,
          ),
          const SizedBox(height: 20),
          Container(
            padding: kPaddingRL,
            // padding: kPaddingRL,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3 / 4,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: phones.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ExploreProductsCard(
                  phoneModel: phones[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
