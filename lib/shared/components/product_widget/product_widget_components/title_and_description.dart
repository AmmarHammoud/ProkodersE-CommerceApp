import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prokoders_e_commerce/models/product_model.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // direction: Axis.vertical,
      children: [
        Text(
          product.name,
          // style: GoogleFonts.poppins(fontWeight: FontWeight.w600), // Use Poppins font with a font size of 32
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          product.description,
          style: Theme.of(context).textTheme.displayMedium,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
