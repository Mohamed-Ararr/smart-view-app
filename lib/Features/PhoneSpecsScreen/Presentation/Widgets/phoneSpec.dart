// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/fontOpt.dart';

class PhoneSpec extends StatelessWidget {
  const PhoneSpec({
    super.key,
    required this.specTtile,
    required this.specValue,
  });

  final String specTtile;
  final String specValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          specTtile,
          style: FontOpt.specTitle,
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Text(
            specValue,
            style: FontOpt.specValue,
          ),
        ),
      ],
    );
  }
}
