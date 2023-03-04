// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/PhoneSpecsScreen/Presentation/Widgets/phoneSpecsGroup.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Models/phone_model/phone_model/phone_model.dart';
import 'package:smartviewapp/constants.dart';

import 'phoneAppBar.dart';
import 'phonePicture.dart';
import 'phonePrice.dart';

class PhoneSpecsScreenBody extends StatelessWidget {
  const PhoneSpecsScreenBody({super.key, required this.phoneModel});

  final PhoneModel phoneModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const PhoneAppBar(),
              const SizedBox(height: 30),
              PhonePic(imageUrl: phoneModel.images?[0].url ?? unavailable),
              const SizedBox(height: 30),
              PhonePrice(
                price: "${phoneModel.prices![0].price ?? 'Unvailable'}",
                oldPrice: "${phoneModel.prices![0].oldPrice ?? 'Unvailable'}",
              ),
              const PhoneSpecsGroup(),
            ],
          ),
        ),
      ),
    );
  }
}
