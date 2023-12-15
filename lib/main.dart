import 'package:coffe_shop/app.dart';
import 'package:coffe_shop/utils/sevice_locator.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MainApp());
}
