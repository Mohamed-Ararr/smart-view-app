// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/PhoneSpecsScreen/Presentation/Widgets/phoneSpecsGroup.dart';

import 'phoneAppBar.dart';
import 'phonePicture.dart';
import 'phonePrice.dart';

class PhoneSpecsScreenBody extends StatelessWidget {
  const PhoneSpecsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              PhoneAppBar(),
              PhonePic(),
              SizedBox(height: 30),
              PhonePrice(),
              PhoneSpecsGroup(),
            ],
          ),
        ),
      ),
    );
  }
}
