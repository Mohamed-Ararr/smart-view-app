// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smartviewapp/Core/utils/routing.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Models/phone_model/phone_model/phone_model.dart';

import '../../../../Core/colors.dart';
import '../../../../Core/fontOpt.dart';
import '../../../../constants.dart';

class ExploreProductsCard extends StatelessWidget {
  const ExploreProductsCard({
    super.key,
    required this.phoneModel,
  });

  final PhoneModel phoneModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(
        Routing.phoneScreen,
        extra: phoneModel,
      ),
      child: Container(
        padding: kPaddingRL,
        decoration: BoxDecoration(
          borderRadius: kBorderR,
          color: AppColors.cardColor,
        ),
        child: Column(
          children: [
            const Spacer(),
            Container(
              width: 150,
              height: 150,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: kBorderR,
                color: AppColors.mainColor,
              ),
              child: CachedNetworkImage(
                imageUrl: phoneModel.images?[0].url! ?? unavailable,
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                    color: AppColors.cardColor,
                  ),
                ),
                errorWidget: (context, url, error) =>
                    const Text("failed to upload!"),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(phoneModel.name!),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  "${phoneModel.prices![0].price ?? phoneModel.prices![0].oldPrice ?? 'Unvailable'} €",
                  style: FontOpt.regularBold),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
