import 'package:belajarflutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Flutter GetX',
      initialRoute: Routes.login_page,
      getPages: Routes.myPages,
    );
  }
}