// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/fontOpt.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Smart View",
      style: FontOpt.titleHeadLine,
    );
  }
}
