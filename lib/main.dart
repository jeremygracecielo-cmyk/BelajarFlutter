import 'package:flutter/material.dart';
import 'package:belajarflutter/kalkulator_page.dart';
import 'package:belajarflutter/login_page_dart.dart';
import 'package:belajarflutter/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Belajar Flutter GetX",
      initialRoute: Routes.list_makanan,
      getPages: Routes.myPages,
    );
  }
}