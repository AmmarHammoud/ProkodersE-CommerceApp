import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/screens/home_screen/controllers/home_controller/home_controller.dart';
import 'package:prokoders_e_commerce/shared/components/category_widget/category_widget_list.dart';
import 'package:prokoders_e_commerce/shared/components/product_widget/product_widget.dart';
import 'package:prokoders_e_commerce/shared/components/product_widget/products_widget_list.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final homeController = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              CategoryWidgetList(),
              const SizedBox(height: 10,),
              ProductsWidgetList(),
            ],
          ),
        ),
      ),
    );
  }
}
