import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/animations/error_animation.json',
          ),
          const Text(
            'Page not Found',
            style: TextStyle(fontSize: 30),
          )
        ],
      )),
    );
  }
}
