import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/components/bottom_nav_bar/bottom_nav_bar.dart';
import '../../shared/components/bottom_nav_bar/logic/bottom_nav_bar_controller.dart';
import '../../shared/constants/bottom_nav_bar_pages.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({super.key});

  final bottomNavBarController =
      Get.put<BottomNavBarController>(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavBar(),
      body: Obx(() {
        return bottomNavBarPages[bottomNavBarController.pageIndex.value];
      }),
    );
  }
}
