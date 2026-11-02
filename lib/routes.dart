import 'package:belajarflutter/login_page_dart.dart';
import 'package:belajarflutter/pages/confirm_registration_page.dart';
import 'package:belajarflutter/pages/detail_makanan_page.dart';
import 'package:belajarflutter/pages/ListMakananPages.dart';
import 'package:belajarflutter/pages/main_menu.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String login_page = '/login_page';
  static const String main_menu = '/main_menu';
  static const String registration_page = '/registration_page';
  static const String confirm_registration = '/confirm_registration';
  static const String list_makanan = '/list_makanan';
  static const String detail_makanan = '/detail_makanan';

  static final myPages = [
    GetPage(name: login_page, page: () => LoginPage()),
    GetPage(name: main_menu, page: () => MainMenu()),
    GetPage(name: registration_page, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => const ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => const DetailMakananPage()),
  ];
}