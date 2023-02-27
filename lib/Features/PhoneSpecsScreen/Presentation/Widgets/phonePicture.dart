// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PhonePic extends StatelessWidget {
  const PhonePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/iphone-category.png",
      scale: 0.6,
    );
  }
}
