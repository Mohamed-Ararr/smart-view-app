import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/searchButton.dart';

import '../../../../Core/colors.dart';
import '../../../../Core/fontOpt.dart';
import '../../../../constants.dart';

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
