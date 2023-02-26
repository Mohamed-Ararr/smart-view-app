// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/fontOpt.dart';

class AppSlogan extends StatelessWidget {
  const AppSlogan({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Text(
        "Your go-to source for smartphones information",
        style: FontOpt.regularText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
