// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/colors.dart';

class SpecificationText extends StatelessWidget {
  const SpecificationText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, right: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: AppColors.secondColor,
          ),
        ),
      ),
      child: const Text("Specifications"),
    );
  }
}
