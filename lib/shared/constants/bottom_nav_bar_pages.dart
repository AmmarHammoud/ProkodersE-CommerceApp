import 'package:flutter/material.dart';
import 'package:prokoders_e_commerce/screens/profile_screen/profile_screen.dart';
import 'package:prokoders_e_commerce/screens/settings_screen/settings_screen.dart';
import '../../screens/home_screen/home_screen.dart';

List<Widget> bottomNavBarPages = [
  HomeScreen(),
  const ProfileScreen(),
  const SettingsScreen(),
];
