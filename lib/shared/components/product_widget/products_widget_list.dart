import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/screens/home_screen/controllers/home_controller/home_controller.dart';
import 'package:prokoders_e_commerce/shared/components/product_widget/product_widget.dart';

class ProductsWidgetList extends StatelessWidget {
  ProductsWidgetList({super.key});

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: homeController.products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 15,
        childAspectRatio: 2.25,
      ),
      itemBuilder: (context, index) =>
          ProductWidget(product: homeController.products[index]),
    );
  }
}
