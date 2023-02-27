// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../Core/colors.dart';
import '../../../../constants.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: kBorderR,
        color: AppColors.secondColor,
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: AppColors.mainColor,
        ),
      ),
    );
  }
}
