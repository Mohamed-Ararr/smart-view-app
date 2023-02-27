// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/colors.dart';
import 'phoneName.dart';
import 'specifiationText.dart';
import 'specsColumnOne.dart';
import 'specsColumnTwo.dart';

class PhoneSpecsGroup extends StatelessWidget {
  const PhoneSpecsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      color: AppColors.cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PhoneName(),
          const SizedBox(height: 10),
          const SpecificationText(),
          const SizedBox(height: 20),
          Row(
            children: const [
              SpecColumnOne(),
              Spacer(flex: 2),
              SpecColumnTwo(),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
