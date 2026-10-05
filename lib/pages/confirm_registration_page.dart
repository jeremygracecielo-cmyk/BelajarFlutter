import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter/controller/confirm_registration_controller.dart';
import 'package:belajarflutter/components/costum_button.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ConfirmRegistrationController controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Konfirmasi Data"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Data Registrasi Anda",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                    ),
                  ),
                  const Divider(height: 30, thickness: 1.2),

                  // Menggunakan Widget tambahan (dibuat di bawah) agar rapi
                  Obx(() => _buildDataRow("Nama Lengkap", controller.namaLengkap.value)),
                  const SizedBox(height: 15),
                  Obx(() => _buildDataRow("Jenis Kelamin", controller.jenisKelamin.value)),
                  const SizedBox(height: 15),
                  Obx(() => _buildDataRow("Email", controller.email.value)),
                  const SizedBox(height: 15),
                  Obx(() => _buildDataRow("No WhatsApp", controller.noWA.value)),

                  const SizedBox(height: 35),
                  Center(
                    child: CostumButton(
                      text: "Kembali Edit",
                      onPressed: () => Get.back(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDataRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.grey)),
        const SizedBox(height: 4),
        Text(
          value.isEmpty ? "-" : value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}