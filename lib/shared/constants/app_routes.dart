import 'package:get/get.dart';
import 'package:prokoders_e_commerce/screens/home_screen/home_screen.dart';
import 'package:prokoders_e_commerce/screens/landing_screen/landing_screen.dart';
import 'package:prokoders_e_commerce/screens/onboarding/app_onboarding.dart';
import 'package:prokoders_e_commerce/screens/profile_screen/profile_screen.dart';
import 'package:prokoders_e_commerce/screens/settings_screen/settings_screen.dart';
import 'package:prokoders_e_commerce/screens/sign_in_screen/sign_in_screen.dart';
import 'package:prokoders_e_commerce/screens/sign_up_screen/sign_up_screen.dart';

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String landingScreen = '/landing_screen';
  static const String signInScreen = '/sign_in_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String homeScreen = '/home_screen';
  static const String profileScreen = '/profile_screen';
  static const String settingsScreen = '/settings_screen';

  static final routes = [
    GetPage(name: onboarding, page: () => AppOnboarding()),
    GetPage(name: landingScreen, page: () => LandingScreen()),
    GetPage(name: signInScreen, page: () => SignInScreen()),
    GetPage(name: signUpScreen, page: () => SignUpScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: profileScreen, page: () => const ProfileScreen()),
    GetPage(name: settingsScreen, page: () => const SettingsScreen()),
  ];
}
