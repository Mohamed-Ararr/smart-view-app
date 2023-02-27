// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'phoneSpec.dart';

class SpecColumnTwo extends StatelessWidget {
  const SpecColumnTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        PhoneSpec(
          specTtile: "CPU type",
          specValue: "Apple",
        ),
        SizedBox(height: 20),
        PhoneSpec(
          specTtile: "CPU",
          specValue: "A14 bionic",
        ),
        SizedBox(height: 20),
        PhoneSpec(
          specTtile: "CPU cores",
          specValue: "8",
        ),
        SizedBox(height: 20),
        PhoneSpec(
          specTtile: "Color(s)",
          specValue: "Grey",
        ),
      ],
    );
  }
}
