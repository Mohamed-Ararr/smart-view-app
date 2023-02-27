// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/fontOpt.dart';

class PhoneName extends StatelessWidget {
  const PhoneName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Iphone 13 Pro Max",
      style: FontOpt.phoneTitle,
    );
  }
}
