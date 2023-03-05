import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smartviewapp/Core/apiService.dart';
import 'package:smartviewapp/Core/colors.dart';
import 'package:smartviewapp/Core/utils/routing.dart';
import 'package:smartviewapp/Features/homeScreen/Bloc%20Manager/Phone%20Cubit/cubit/phone_cubit.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Repos/home_repo_impl.dart';

void main() {
  runApp(const SmartViewApp());
}

class SmartViewApp extends StatelessWidget {
  const SmartViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhoneCubit(
        HomeRepoImpl(
          ApiService(
            Dio(),
          ),
        ),
      )..fetchPhones(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: Routing.routes,
        theme: ThemeData(
          fontFamily: "Montserrat",
          brightness: Brightness.dark,
          canvasColor: AppColors.mainColor,
        ),
      ),
    );
  }
}
