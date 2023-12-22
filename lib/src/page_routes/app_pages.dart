import 'package:get/get.dart';
import 'package:tinder_clone/src/pages/auth/view/auth_number_otp_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/auth_number_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_birthday_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_email_problem_sign_in_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_email_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_faculty_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_gender_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_habits_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_like_see_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_maximum_distance_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_name_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_search_matches_screen.dart';
import 'package:tinder_clone/src/pages/auth/view/insert_sexual_orientation_screen.dart';
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
      page: () => const InsertGenderScreen(),
    ),
    GetPage(
      name: PagesRoutes.insertSexualOrientation,
      page: () => const InsertSexualOrientationScreen(),
    ),
    GetPage(
      name: PagesRoutes.insertLikeSee,
      page: () => const InsertLikeSeeScreen(),
    ),
    GetPage(
      name: PagesRoutes.insertSearchMatches,
      page: () => const InsertSearchMatchesScreen(),
    ),
    GetPage(
      name: PagesRoutes.insertMaximumDistance,
      page: () => const InsertMaximumDistance(),
    ),
    GetPage(
      name: PagesRoutes.insertFaculty,
      page: () => const InsertFacultyScreen(),
    ),
    GetPage(
      name: PagesRoutes.insertHabits,
      page: () => const InsertHabitsScreen(),
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
  static const String insertLikeSee = '/insertLikeSee';
  static const String insertSexualOrientation = '/insertSexualOrientation';
  static const String insertSearchMatches = '/insertSearchMatches';
  static const String insertMaximumDistance = '/insertMaximumDistance';
  static const String insertFaculty = '/insertFaculty';
  static const String insertHabits = '/insertHabits';
  static const String welcomeRoute = '/welcome';
}
