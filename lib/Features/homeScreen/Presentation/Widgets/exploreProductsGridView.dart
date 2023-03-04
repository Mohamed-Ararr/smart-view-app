// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartviewapp/Features/homeScreen/Bloc%20Manager/Phone%20Cubit/cubit/phone_cubit.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/failureWidget.dart';
import 'package:smartviewapp/constants.dart';

import 'exploreProductCard.dart';

class ExploreProductsGridView extends StatelessWidget {
  const ExploreProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneCubit, PhoneState>(
      builder: (context, state) {
        if (state is PhoneSuccess) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 3 / 4,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemCount: state.phoneList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var phones = state.phoneList[index];
              return ExploreProductsCard(
                phoneModel: state.phoneList[index],
              );
            },
          );
        } else if (state is PhoneFailure) {
          return FailureWidget(errorMsg: state.errorMsg);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
