import 'package:get/get.dart';
import 'package:tinder_clone/src/pages/auth/view/auth_number_otp_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/auth_number_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_birthday_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_email_problem_sign_in_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_email_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_gender_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_name_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/problem_sign_in_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/sign_in_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/welcome_screen.dart';

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
      page: () => AuthNumberOtpScreen(),
    ),
    GetPage(
      name: PagesRoutes.problemSignInRoute,
      page: () => const ProblemSignInScreen(),
    ),
    GetPage(
      name: PagesRoutes.insertNameRoute,
      page: () => const InsertNameScreen(),
    ),
    GetPage(
      name: PagesRoutes.insertEmailRoute,
      page: () => const InsertEmailScreen(),
    ),
    GetPage(
      name: PagesRoutes.welcomeRoute,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: PagesRoutes.insertEmailProblemSignInRoute,
      page: () => InsertEmailProblemSignInScreen(),
    ),
    GetPage(
      name: PagesRoutes.insertBirthdayRoute,
      page: () => InsertBirthdayScreen(),
    ),
    GetPage(
      name: PagesRoutes.insertGenderRoute,
      page: () => InsertGenderScreen(),
    ),
  ];
}

abstract class PagesRoutes {
  static const String baseRoute = '/';
  static const String signInRoute = '/signIn';
  static const String problemSignInRoute = '/problemSignIn';
  static const String insertEmailProblemSignInRoute =
      '/insertEmailProblemSignIn';
  static const String authNumberRoute = '/authNumber';
  static const String authNumberOtpRoute = '/authNumberOtp';
  static const String insertNameRoute = '/insertName';
  static const String insertEmailRoute = '/insertEmail';
  static const String insertBirthdayRoute = '/insertBirthday';
  static const String insertGenderRoute = '/insertGender';
  static const String welcomeRoute = '/welcome';
}
