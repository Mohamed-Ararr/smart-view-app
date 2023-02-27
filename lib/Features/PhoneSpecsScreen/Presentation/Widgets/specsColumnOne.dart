// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/PhoneSpecsScreen/Presentation/Widgets/phoneSpec.dart';

class SpecColumnOne extends StatelessWidget {
  const SpecColumnOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        PhoneSpec(
          specTtile: "Year",
          specValue: "2021",
        ),
        SizedBox(height: 20),
        PhoneSpec(
          specTtile: "Phone Code",
          specValue: "Iph125code",
        ),
        SizedBox(height: 20),
        PhoneSpec(
          specTtile: "Display Size",
          specValue: "5.5-Inch",
        ),
        SizedBox(height: 20),
        PhoneSpec(
          specTtile: "Storage",
          specValue: "128 GB",
        ),
      ],
    );
  }
}
