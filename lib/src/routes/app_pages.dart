import 'package:get/get.dart';
import 'package:green_grocer/src/pages/splash/splash_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      page: () => const SplashScreen(),
      name: '/splash',
    ),
  ];
}
