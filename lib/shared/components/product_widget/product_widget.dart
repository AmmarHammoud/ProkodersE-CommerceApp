import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/models/product_model.dart';
import 'package:prokoders_e_commerce/screens/home_screen/controllers/home_controller/home_controller.dart';
import 'package:prokoders_e_commerce/shared/components/product_widget/product_widget_components/like_button.dart';
import 'package:prokoders_e_commerce/shared/components/product_widget/product_widget_components/price_and_icon.dart';
import 'package:prokoders_e_commerce/shared/components/product_widget/product_widget_components/title_and_description.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({
    super.key,
    required this.product,
    this.radius = 15,
  });

  final ProductModel product;
  final double radius;

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        border: Border.all(color: Colors.green[600]!)
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TitleAndDescription(product: product)),
                  PriceAndIcon(
                    product: product,
                    onIconPressed: () {
                      homeController
                          .addProductToCart(product: product);
                    },
                    isInCart: product.isInCart,
                  ),
                ],
              ),
            ),
            LikeButton(
              isFav: product.isFav,
              onPressed: () {
                homeController
                    .addProductToFavourite(product: product);
              },
            ),
            Flexible(
              flex: 1,
              child: Image.asset(product.image),
            ),
          ],
        ),
      ),
    );
  }
}
