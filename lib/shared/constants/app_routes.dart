import 'package:get/get.dart';
import 'package:prokoders_e_commerce/screens/home_screen/home_screen.dart';
import 'package:prokoders_e_commerce/screens/landing_screen/landing_screen.dart';
import 'package:prokoders_e_commerce/screens/profile_screen/profile_screen.dart';
import 'package:prokoders_e_commerce/screens/settings_screen/settings_screen.dart';
import 'package:prokoders_e_commerce/screens/sign_in_screen/sign_in_screen.dart';
import 'package:prokoders_e_commerce/screens/sign_up_screen/sign_up_screen.dart';

class AppRoutes {
  static const String _landingScreen = '/landing_screen';
  static const String _signInScreen = '/sign_in_screen';
  static const String _signUpScreen = '/sign_up_screen';
  static const String _homeScreen = '/home_screen';
  static const String _profileScreen = '/profile_screen';
  static const String _settingsScreen = '/settings_screen';

  static final routes = [
    GetPage(name: _landingScreen, page: () => LandingScreen()),
    GetPage(name: _signInScreen, page: () => SignInScreen()),
    GetPage(name: _signUpScreen, page: () => SignUpScreen()),
    GetPage(name: _homeScreen, page: () => const HomeScreen()),
    GetPage(name: _profileScreen, page: () => const ProfileScreen()),
    GetPage(name: _settingsScreen, page: () => const SettingsScreen()),
  ];
}
