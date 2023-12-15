import 'package:coffe_shop/const/theme_color.dart';
import 'package:coffe_shop/utils/nav.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 64,
          ),
          Image.asset(
            'assets/artwork.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 33,
          ),
          const Text(
            '''Get the best coffee\nIn town!''',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 103,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              OutlinedButton(
                onPressed: () {
                  context.go(Nav.splashScreen);
                },
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 20, color: ThemeColor.color2),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 47),
            child: OutlinedButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook_outlined),
                  SizedBox(width: 30),
                  Text(
                    'Connect with facebook',
                    style: TextStyle(
                      color: ThemeColor.color3,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
