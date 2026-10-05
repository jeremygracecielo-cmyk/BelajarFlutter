import 'package:belajarflutter/components/costum_textfield.dart';
import 'package:belajarflutter/kalkulator_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        children: [
          Text(
            "Welcome to application $statusLogin",
            style: const TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 46, 9, 182),
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input username",
              txtController: txtUsername,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input password",
              txtController: txtPassword,
            ),
          ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                String username = txtUsername.text;
                String password = txtPassword.text;

                if (username == "admin" && password == "admin") {
                  statusLogin = "admin";
                  print("sukses login");

                  Get.to(() => CalculatorPage());

                } else {
                  statusLogin = "failed";
                  print("gagal login");

                  Get.snackbar(
                    "Login Gagal",
                    "Username atau password salah!",
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }
              });
            },
            child: const Text(
              "Login",
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 30, 175, 44),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}