import 'package:coffe_shop/utils/nav.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      context.go(Nav.home);
    });
    return Scaffold(
      body: Stack(children: [
        Image.asset('assets/back.png'),
        Align(
          alignment: Alignment.center,
          child: Image.asset('assets/coffe.png'),
        ),
      ]),
    );
  }
}
