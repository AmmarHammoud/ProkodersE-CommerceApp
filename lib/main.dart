import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prokoders_e_commerce/shared/components/get_storage_helper.dart';
import 'package:prokoders_e_commerce/shared/constants/app_routes.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final bool onboardingHasBeenShown;
  late final bool tokenIsNull;

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    onboardingHasBeenShown = GetStorageHelper.checkOnboardingStatus();
    tokenIsNull = GetStorageHelper.checkUserToken();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: AppRoutes.routes,
      initialRoute: !onboardingHasBeenShown
          ? AppRoutes.onboarding
          : tokenIsNull
              ? AppRoutes.signInScreen
              : AppRoutes.landingScreen,
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
          displayMedium: GoogleFonts.poppins(
            fontSize: 13
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
    );
  }
}
