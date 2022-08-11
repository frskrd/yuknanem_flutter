import 'package:flutter/material.dart';
import 'package:yuknanem/utilities/constant.dart';

class GreenElevatedButton extends StatelessWidget {
  const GreenElevatedButton({
    Key? key,
    required this.changeScreen,
    required this.title,
  }) : super(key: key);

  final String title;
  final VoidCallback changeScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: ElevatedButton(
        onPressed: changeScreen,
        style: ElevatedButton.styleFrom(
            primary: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          title,
          style: TextStyle(
            color: secondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
