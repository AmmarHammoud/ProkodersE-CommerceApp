import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/models/product_model.dart';
import 'package:prokoders_e_commerce/screens/home_screen/controllers/home_controller/home_controller.dart';

class PriceAndIcon extends StatefulWidget {
  PriceAndIcon({
    super.key,
    required this.product,
    required this.onIconPressed,
    required this.isInCart,
  });

  final ProductModel product;
  final Function onIconPressed;
  bool isInCart;

  @override
  State<PriceAndIcon> createState() => _PriceAndIconState();
}

class _PriceAndIconState extends State<PriceAndIcon> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '\$${widget.product.price}',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          width: 5,
        ),
        IconButton(
            onPressed: () {
              widget.onIconPressed();
              setState(() {
                widget.isInCart = !widget.isInCart;
              });

            },
            icon: Icon(
              FontAwesomeIcons.cartShopping,
              color: widget.isInCart ? Colors.blue : null,
            ))
      ],
    );
  }
}
