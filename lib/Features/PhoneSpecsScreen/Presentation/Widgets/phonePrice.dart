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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Price", style: FontOpt.regularBoldWhite),
          Text("499.99 \$", style: FontOpt.regularBoldWhite),
        ],
      ),
    );
  }
}
