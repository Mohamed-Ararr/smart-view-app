import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smartviewapp/Core/apiService.dart';
import 'package:smartviewapp/Features/PhoneSpecsScreen/Presentation/phoneSpecsScreen.dart';
import 'package:smartviewapp/Features/homeScreen/Bloc%20Manager/Phone%20Cubit/cubit/phone_cubit.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Models/phone_model/phone_model/phone_model.dart';
import 'package:smartviewapp/Features/homeScreen/Presentation/homeScreen.dart';

import '../../Features/SplashScreen/Presentation/splashScreen.dart';
import '../../Features/homeScreen/Data/Repos/home_repo_impl.dart';

class Routing {
  static String splashScreen = "/";
  static String homeScreen = "/homeScreen";
  static String phoneScreen = "/phoneScreen";

  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: phoneScreen,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              PhoneCubit(HomeRepoImpl(ApiService(Dio())))..fetchPhones(),
          child: PhoneSpecsScreen(
            phoneModel: state.extra as PhoneModel,
          ),
        ),
      ),
    ],
  );
}
