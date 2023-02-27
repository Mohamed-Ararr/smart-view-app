// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/PhoneSpecsScreen/Presentation/Widgets/phoneAppBar.dart';
import 'package:smartviewapp/constants.dart';

class PhoneSpecsScreenBody extends StatelessWidget {
  const PhoneSpecsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingRL,
          child: SingleChildScrollView(
            child: Column(
              children: const [
                PhoneAppBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
