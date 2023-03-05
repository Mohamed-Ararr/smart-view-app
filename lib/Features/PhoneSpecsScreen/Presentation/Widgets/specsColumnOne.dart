// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/PhoneSpecsScreen/Presentation/Widgets/phoneSpec.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Models/phone_model/phone_model/phone_model.dart';

class SpecColumnOne extends StatelessWidget {
  const SpecColumnOne({super.key, required this.phoneModel});

  final PhoneModel phoneModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PhoneSpec(
          specTtile: "Year",
          specValue: "${phoneModel.main?.generalYear ?? "Not Available"}",
        ),
        const SizedBox(height: 20),
        PhoneSpec(
          specTtile: "Phone Code",
          specValue: phoneModel.mpn ?? "Not Available",
        ),
        const SizedBox(height: 20),
        PhoneSpec(
          specTtile: "Display Size",
          specValue: "${phoneModel.main?.displaySizeInch ?? "Not Available"}",
        ),
        const SizedBox(height: 20),
        PhoneSpec(
          specTtile: "Storage",
          specValue:
              "${phoneModel.main?.storageCapacityGb ?? "Not Available"} GB",
        ),
      ],
    );
  }
}
