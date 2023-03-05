// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Models/phone_model/phone_model/phone_model.dart';

import 'phoneSpec.dart';

class SpecColumnTwo extends StatelessWidget {
  const SpecColumnTwo({super.key, required this.phoneModel});

  final PhoneModel phoneModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PhoneSpec(
          specTtile: "Phone brand",
          specValue: phoneModel.name?.split(" ")[0] ?? "Not Available",
        ),
        const SizedBox(height: 20),
        PhoneSpec(
          specTtile: "CPU",
          specValue: phoneModel.main?.cpuType ?? "Not Available",
        ),
        const SizedBox(height: 20),
        PhoneSpec(
          specTtile: "CPU cores",
          specValue: "${phoneModel.main?.cpuNumberOfCores ?? "Not Available"}",
        ),
        const SizedBox(height: 20),
        PhoneSpec(
          specTtile: "Color(s)",
          specValue: phoneModel.main?.designColorName ?? "Not Available",
        ),
      ],
    );
  }
}
