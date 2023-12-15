import 'package:coffe_shop/const/theme_style.dart';
import 'package:flutter/material.dart';

import 'utils/nav.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeStyle.light,
      routerConfig: Nav.router,
    );
  }
}
