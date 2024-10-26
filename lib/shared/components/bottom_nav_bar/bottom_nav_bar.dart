import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/shared/components/bottom_nav_bar/logic/bottom_nav_bar_controller.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final bottomNavBarController = Get.find<BottomNavBarController>();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Obx(() {
      return CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 250),
        // backgroundColor: Colors.white70,
        // buttonBackgroundColor: theme.primaryColor,
        color: Colors.white70,
        items: const [
          Icon(
            Icons.home,
          ),
          Icon(
            Icons.person,
          ),
          Icon(
            Icons.settings,
          ),
        ],
        index: bottomNavBarController.pageIndex.value,
        onTap: bottomNavBarController.setSelectedIndex,
      );
    });

    // return Obx(() {
    //   return BottomNavigationBar(
    //     iconSize: 24.0,
    //     items: const <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.lens_outlined),
    //         label: 'home',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.person),
    //         label: 'profile',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.settings),
    //         label: 'settings',
    //       ),
    //     ],
    //     currentIndex: bottomNavBarController.pageIndex.value,
    //     selectedItemColor: theme.primaryColor,
    //     unselectedItemColor: theme.unselectedWidgetColor,
    //     selectedLabelStyle: TextStyle(
    //       fontSize: 12,
    //       color: theme.primaryColor,
    //     ),
    //     unselectedLabelStyle: TextStyle(
    //       fontSize: 12,
    //       color: theme.unselectedWidgetColor,
    //     ),
    //     showUnselectedLabels: true,
    //     onTap: bottomNavBarController.setSelectedIndex,
    //   );
    //   // return ;
    // });
  }
}
