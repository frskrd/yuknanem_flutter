import 'package:flutter/material.dart';
import 'package:yuknanem/utilities/constant.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, required this.isSelected});

  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          isSelected ? Icons.favorite_border : Icons.favorite,
          color: secondaryColor,
        ),
        color: secondaryColor);
  }
}
