// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartviewapp/Features/homeScreen/Bloc%20Manager/Phone%20Cubit/cubit/phone_cubit.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Models/phone_model/phone_model/phone_model.dart';

import '../../../../Core/colors.dart';
import 'phoneName.dart';
import 'specifiationText.dart';
import 'specsColumnOne.dart';
import 'specsColumnTwo.dart';

class PhoneSpecsGroup extends StatelessWidget {
  const PhoneSpecsGroup({super.key, required this.phoneModel});

  final PhoneModel phoneModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneCubit, PhoneState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          color: AppColors.cardColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PhoneName(phoneName: phoneModel.name!),
              const SizedBox(height: 10),
              const SpecificationText(),
              const SizedBox(height: 20),
              Row(
                children: [
                  SpecColumnOne(phoneModel: phoneModel),
                  const Spacer(flex: 2),
                  SpecColumnTwo(phoneModel: phoneModel),
                  const Spacer(),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
