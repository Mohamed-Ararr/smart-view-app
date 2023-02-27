import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'colors.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, this.onTapChange});

  final Function(int)? onTapChange;
  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: onTapChange,
      backgroundColor: AppColors.cardColor,
      tabBackgroundColor: AppColors.mainColor,
      hoverColor: AppColors.mainColor,
      tabMargin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(15),
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      gap: 10,
      tabs: const [
        GButton(
          text: "Home",
          icon: FontAwesomeIcons.house,
        ),
        GButton(
          text: "Favorites",
          icon: FontAwesomeIcons.heart,
        ),
      ],
    );
  }
}
