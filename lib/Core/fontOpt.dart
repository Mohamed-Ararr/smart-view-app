// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FontOpt {
  static TextStyle titleHeadLine = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static TextStyle regularText = const TextStyle(
    fontSize: 17,
  );

  static TextStyle regularBold = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  static TextStyle regularSemiBold = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static TextStyle regularBlack = const TextStyle(
    fontSize: 17,
    color: Colors.black,
  );

  static TextStyle regularBoldWhite = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle specTitle = TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.white.withAlpha(127),
  );

  static TextStyle specValue = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle phoneTitle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
}
