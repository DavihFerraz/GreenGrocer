import 'package:get/get.dart';
import 'package:green_grocer/src/pages/auth/sign_in_screen.dart';
import 'package:green_grocer/src/pages/auth/sign_up_screen.dart';
import 'package:green_grocer/src/pages/base/base_screen.dart';
import 'package:green_grocer/src/pages/splash/splash_screen.dart';
import 'package:green_grocer/src/routes/app_routes.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      page: () => const SplashScreen(),
      name: Routes.splash,
    ),
    GetPage(
      page: () => const SignInScreen(),
      name: Routes.signIn,
    ),
    GetPage(
      page: () => SignUpScreen(),
      name: Routes.signUp,
    ),
    GetPage(
      page: () => const BaseScreen(),
      name: Routes.base,
    ),
  ];
}
