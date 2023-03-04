// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Core/bottomNav.dart';

import '../../../../constants.dart';
import 'favoriteScreenWidget.dart';
import 'homeAppBar.dart';
import 'homeScreenWidget.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List<Widget> screens = const [
    HomeScreenWidget(),
    FavoriteScreenWidget(),
  ];

  int selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        onTapChange: (index) {
          setState(() {
            selectedScreen = index;
          });
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: kPaddingRL,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                const SizedBox(height: 20),
                screens.elementAt(selectedScreen),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
