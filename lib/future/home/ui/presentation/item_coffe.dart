import 'dart:math';

import 'package:coffe_shop/const/theme_color.dart';
import 'package:flutter/material.dart';

class ItemCoffe extends StatelessWidget {
  const ItemCoffe({
    super.key,
    required this.cost,
    required this.name,
    required this.iconPath,
  });

  final double cost;
  final String name;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/back.png',
            fit: BoxFit.fill,
          ),
          SafeArea(
            bottom: false,
            child: Align(
              child: Column(
                children: [
                  SizedBox(
                    height: kBottomNavigationBarHeight,
                    child: AppBar(
                      elevation: 0,
                      foregroundColor: const Color(0xFFBB5900),
                      backgroundColor: Colors.transparent,
                      title: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        "assets/$iconPath",
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      color: ThemeColor.color1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    name,
                                    style: const TextStyle(fontSize: 22),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    "\$ ${cost}",
                                    style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: ThemeColor.color2,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 16),
                                width: 100,
                                height: 30,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: ThemeColor.color2,
                                          borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(30),
                                          ),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 3),
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        color: const Color(0xFFD9D9D9),
                                        child: Text(
                                          0.toString(),
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: ThemeColor.color2,
                                          borderRadius: BorderRadius.horizontal(
                                            right: Radius.circular(30),
                                          ),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 3),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 50, bottom: 25),
                            child: Text(
                              'Size',
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/small.png',
                                height: 45,
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              Image.asset(
                                'assets/medium.png',
                                height: 45,
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              Image.asset(
                                'assets/large.png',
                                height: 45,
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 43, bottom: 25),
                            child: Text(
                              'Size',
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/not_sugar.png',
                                height: 30,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Image.asset(
                                'assets/one_sugar.png',
                                height: 30,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Image.asset(
                                'assets/two_sugar.png',
                                height: 30,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Image.asset(
                                'assets/three_sugar.png',
                                height: 30,
                              )
                            ],
                          ),
                          const Spacer(),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Add to cart',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
