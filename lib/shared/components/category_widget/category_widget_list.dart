import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/screens/home_screen/controllers/home_controller/home_controller.dart';
import 'package:prokoders_e_commerce/shared/components/category_widget/category_widget.dart';

class CategoryWidgetList extends StatelessWidget {
  CategoryWidgetList({super.key});

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            CategoryWidget(category: homeController.categories[index]),
        separatorBuilder: (context, index) => const SizedBox(
          width: 5,
        ),
        itemCount: homeController.categories.length,
      ),
    );
  }
}
