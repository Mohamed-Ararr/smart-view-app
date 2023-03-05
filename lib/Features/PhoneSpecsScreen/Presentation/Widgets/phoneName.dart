// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/fontOpt.dart';

class PhoneName extends StatelessWidget {
  const PhoneName({super.key, required this.phoneName});

  final String phoneName;

  @override
  Widget build(BuildContext context) {
    return Text(
      phoneName,
      style: FontOpt.phoneTitle,
    );
  }
}
