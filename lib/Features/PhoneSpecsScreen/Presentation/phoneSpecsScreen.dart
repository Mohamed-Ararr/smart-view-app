// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smartviewapp/Features/PhoneSpecsScreen/Presentation/Widgets/phoneSpecsScreenBody.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Models/phone_model/phone_model/phone_model.dart';

class PhoneSpecsScreen extends StatelessWidget {
  const PhoneSpecsScreen({super.key, required this.phoneModel});

  final PhoneModel phoneModel;

  @override
  Widget build(BuildContext context) {
    return PhoneSpecsScreenBody(phoneModel: phoneModel);
  }
}
