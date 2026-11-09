import 'package:belajarflutter/menu/history_page.dart';
import 'package:belajarflutter/menu/profile_page.dart';
import 'package:belajarflutter/pages/ListMakananPages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPage = [
    ListMakananPage(),
    const HistoryPage(),
    const ProfilePage(),
  ];
}