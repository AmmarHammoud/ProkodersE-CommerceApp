import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/shared/constants/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: AppRoutes.routes,
      //here we should check whether the user's token is null or not to decide the initial page
      initialRoute: '/sign_in_screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
    );
  }
}
