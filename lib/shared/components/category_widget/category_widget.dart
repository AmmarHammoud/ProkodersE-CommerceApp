import 'package:flutter/material.dart';
import 'package:prokoders_e_commerce/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    this.size = 100,
    this.radius = 15,
    required this.category,
  });

  final double size;
  final double radius;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.yellow[100],
        border: Border.all(color: Colors.yellow[600]!),
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(category.icon),
            Text(category.title),
          ],
        ),
      ),
    );
  }
}
