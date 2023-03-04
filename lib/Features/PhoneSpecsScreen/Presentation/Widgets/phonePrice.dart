// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/colors.dart';
import '../../../../Core/fontOpt.dart';

class PhonePrice extends StatelessWidget {
  const PhonePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      color: AppColors.secondColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Price", style: FontOpt.regularBoldWhite),
              Text("499.99 \$", style: FontOpt.regularBoldWhite),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Old Price",
                style: FontOpt.specTitle.copyWith(color: AppColors.cardColor),
              ),
              Text(
                "549.99 \$",
                style: FontOpt.regularBoldWhite.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: AppColors.cardColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
