// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:smartviewapp/Core/fontOpt.dart';
import 'package:smartviewapp/Core/utils/buildSuggestions.dart';
import 'package:smartviewapp/Features/homeScreen/Bloc%20Manager/Phone%20Cubit/cubit/phone_cubit.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Models/phone_model/phone_model/phone_model.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/exploreProductsGridView.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/Widgets/failureWidget.dart';
import 'package:smartviewapp/constants.dart';

import '../Features/homeScreen/Presentation/Widgets/exploreProductCard.dart';

class SearchDel extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            GoRouter.of(context).pop();
          } else {
            query = "";
          }
        },
        icon: const Icon(FontAwesomeIcons.xmark),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => GoRouter.of(context).pop(),
        icon: const Icon(
          FontAwesomeIcons.arrowLeft,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocBuilder<PhoneCubit, PhoneState>(
      builder: (context, state) {
        if (state is PhoneSuccess) {
          List<PhoneModel> phonesList = state.phoneList.where((phone) {
            String input = query.toLowerCase();
            String result = phone.name!.toLowerCase();
            return result.contains(input);
          }).toList();
          return BuildSuggestions(phones: phonesList);
        } else if (state is PhoneFailure) {
          return FailureWidget(errorMsg: state.errorMsg);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
