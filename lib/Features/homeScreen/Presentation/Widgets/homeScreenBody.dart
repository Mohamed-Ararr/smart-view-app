// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'exploreProducts.dart';
import 'homeAppBar.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: kPaddingRL,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                HomeAppBar(),
                SizedBox(height: 20),
                ExploreProducts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
