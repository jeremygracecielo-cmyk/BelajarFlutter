import 'package:get/get.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:belajarflutter/pages/confirm_registration_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";

  static final myPages = [
    GetPage(name: registration, page: () => const RegistrationPage()),

    GetPage(name: confirm_registration, page: () => const ConfirmRegistrationPage()),
  ];
}