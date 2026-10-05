import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter/components/costum_textfield.dart';
import 'package:belajarflutter/components/costum_button.dart';
import 'package:belajarflutter/routes.dart';
import 'package:belajarflutter/controller/registration_controller.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final RegistrationController controller = Get.put(RegistrationController());

    final TextEditingController txtNamaLengkap = TextEditingController();
    final TextEditingController txtJenisKelamin = TextEditingController();
    final TextEditingController txtEmail = TextEditingController();
    final TextEditingController txtNoWA = TextEditingController();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Registrasi Akun", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent, Colors.pinkAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 15,
              color: Colors.white.withOpacity(0.95),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.app_registration_rounded, size: 65, color: Colors.deepPurple),
                    const SizedBox(height: 10),
                    const Text(
                      "Isi data dirimu di bawah",
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 30),

                    // Input dengan Ikon
                    CustomTextfield(
                      myHint: "Nama Lengkap",
                      txtController: txtNamaLengkap,
                      icon: Icons.person_outline,
                    ),
                    const SizedBox(height: 15),
                    CustomTextfield(
                      myHint: "Jenis Kelamin (L/P)",
                      txtController: txtJenisKelamin,
                      icon: Icons.wc_outlined,
                    ),
                    const SizedBox(height: 15),
                    CustomTextfield(
                      myHint: "Email Aktif",
                      txtController: txtEmail,
                      keyboardType: TextInputType.emailAddress,
                      icon: Icons.email_outlined,
                    ),
                    const SizedBox(height: 15),
                    CustomTextfield(
                      myHint: "Nomor WhatsApp",
                      txtController: txtNoWA,
                      keyboardType: TextInputType.phone,
                      icon: Icons.phone_android_outlined,
                    ),
                    const SizedBox(height: 35),

                    SizedBox(
                      width: double.infinity,
                      child: CostumButton(
                        text: "DAFTAR SEKARANG",
                        onPressed: () {
                          Get.toNamed(
                            Routes.confirm_registration,
                            arguments: {
                              "nama_lengkap": txtNamaLengkap.text,
                              "jenis_kelamin": txtJenisKelamin.text,
                              "email": txtEmail.text,
                              "no_wa": txtNoWA.text,
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}