import 'package:flutter/material.dart';
import 'package:yuknanem/utilities/constant.dart';

class FavoriteButton extends StatefulWidget {
  FavoriteButton({super.key, this.isSelected = false});

  bool isSelected;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            widget.isSelected = !widget.isSelected;
          });
        },
        icon: Icon(
          widget.isSelected ? Icons.favorite_border : Icons.favorite,
          color: secondaryColor,
        ),
        color: secondaryColor);
  }
}
