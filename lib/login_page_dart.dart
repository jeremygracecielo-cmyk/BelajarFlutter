import 'package:belajarflutter/components/costum_button.dart';
import 'package:belajarflutter/components/costum_textfield.dart';
import 'package:belajarflutter/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Welcome to Application Sejahtera",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 16, 179, 98),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text("Silahkan login terlebih dahulu"),
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 100,
                height: 100,
                errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.account_circle, size: 100, color: Colors.deepPurple),
              ),
            ),
            const SizedBox(height: 20),
            CustomTextfield(
              myHint: "input username",
              txtController: controller.txtUsername,
              icon: Icons.person_outline,
            ),
            const SizedBox(height: 16),
            CustomTextfield(
              myHint: "input password",
              txtController: controller.txtPassword,
              icon: Icons.lock_outline,
            ),
            const SizedBox(height: 24),
            Obx(
                  () => controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : CostumButton(
                text: "Login",
                onPressed: () {
                  controller.login();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}