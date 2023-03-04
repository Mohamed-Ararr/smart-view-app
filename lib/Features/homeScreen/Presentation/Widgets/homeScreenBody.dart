// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Core/bottomNav.dart';

import '../../../../constants.dart';
import 'exploreCategories.dart';
import 'exploreProducts.dart';
import 'homeAppBar.dart';

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

class FavoriteScreenWidget extends StatelessWidget {
  const FavoriteScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Favorite Phones"),
    );
  }
}

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ExploreCategories(),
        SizedBox(height: 30),
        ExploreProducts(),
      ],
    );
  }
}
