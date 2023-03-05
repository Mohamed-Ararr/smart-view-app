// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.errorMsg});

  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text("¯\\_(ツ)_/¯"),
          const SizedBox(height: 30),
          Text(errorMsg),
        ],
      ),
    );
  }
}
