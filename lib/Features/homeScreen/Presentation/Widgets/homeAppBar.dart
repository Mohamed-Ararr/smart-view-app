// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/searchButton.dart';

import '../../../../Core/fontOpt.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Smart View",
          style: FontOpt.titleHeadLine.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        const SearchButton()
      ],
    );
  }
}
