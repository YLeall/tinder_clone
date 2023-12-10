import 'package:get/get.dart';
import 'package:tinder_clone/src/pages/auth/view/auth_number_otp_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/auth_number_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/sign_in_screen.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: PagesRoutes.signInRoute,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: PagesRoutes.authNumberRoute,
      page: () => const AuthNumberScreen(),
    ),
    GetPage(
      name: PagesRoutes.authNumberOtpRoute,
      page: () => const AuthNumberOtpScreen(),
    )
  ];
}

abstract class PagesRoutes {
  static const String baseRoute = '/';
  static const String signInRoute = '/signin';
  static const String authNumberRoute = '/authNumber';
  static const String authNumberOtpRoute = '/authNumberOtp';
}
