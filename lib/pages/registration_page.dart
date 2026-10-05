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
      appBar: AppBar(
        title: const Text("Registrasi Akun"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade200, // Warna background aplikasi
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Card( // Memberikan efek kotak melayang (styling)
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Form Pendaftaran",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                  const SizedBox(height: 25),

                  CustomTextfield(myHint: "Nama Lengkap", txtController: txtNamaLengkap),
                  const SizedBox(height: 15),

                  CustomTextfield(myHint: "Jenis Kelamin (L/P)", txtController: txtJenisKelamin),
                  const SizedBox(height: 15),

                  CustomTextfield(
                    myHint: "Email",
                    txtController: txtEmail,
                    keyboardType: TextInputType.emailAddress, // Keyboard khusus email
                  ),
                  const SizedBox(height: 15),

                  CustomTextfield(
                    myHint: "No WhatsApp",
                    txtController: txtNoWA,
                    keyboardType: TextInputType.phone, // Keyboard khusus nomor HP
                  ),
                  const SizedBox(height: 35),

                  SizedBox(
                    width: double.infinity, // Tombol melebar penuh
                    child: CostumButton(
                      text: "Kirim Data",
                      onPressed: () {
                        // Mengirim ke halaman konfirmasi
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
    );
  }
}