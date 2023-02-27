// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants.dart';

class PhoneAppBar extends StatelessWidget {
  const PhoneAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingRL,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(
              FontAwesomeIcons.circleArrowLeft,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.heart,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
