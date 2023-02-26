import 'package:go_router/go_router.dart';

import '../../Features/SplashScreen/Presentation/splashScreen.dart';

class Routing {
  static String splashScreen = "/";
  static String homeScreen = "/homeScreen";

  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
