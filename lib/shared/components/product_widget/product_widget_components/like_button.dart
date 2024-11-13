import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LikeButton extends StatefulWidget {
  LikeButton({
    super.key,
    required this.onPressed,
    required this.isFav,
  });

  final Function onPressed;
  bool isFav;

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // direction: Axis.vertical,
      children: [
        IconButton(
            onPressed: () {
              widget.onPressed();
              setState(() {widget.isFav = !widget.isFav;});
            },
            icon: Icon(
              FontAwesomeIcons.heart,
              color: widget.isFav ? Colors.red : null,
            )),
        const Spacer(),
      ],
    );
  }
}
