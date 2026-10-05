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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Konfirmasi Data", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pinkAccent, Colors.purpleAccent, Colors.deepPurple],
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
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.check_circle_rounded, size: 70, color: Colors.green),
                    const SizedBox(height: 10),
                    const Text(
                      "sudah kesimpan",
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 25),

                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.purple.shade100, width: 2)
                      ),
                      child: Column(
                        children: [
                          Obx(() => _buildInfoRow(Icons.person, "Nama Lengkap", controller.namaLengkap.value)),
                          const Divider(height: 20),
                          Obx(() => _buildInfoRow(Icons.wc, "Gender", controller.jenisKelamin.value)),
                          const Divider(height: 20),
                          Obx(() => _buildInfoRow(Icons.email, "Email Address", controller.email.value)),
                          const Divider(height: 20),
                          Obx(() => _buildInfoRow(Icons.phone, "WhatsApp", controller.noWA.value)),
                        ],
                      ),
                    ),

                    const SizedBox(height: 35),
                    SizedBox(
                      width: double.infinity,
                      child: CostumButton(
                        text: "KEMBALI EDIT",
                        onPressed: () => Get.back(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: Colors.pinkAccent, size: 24),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
              Text(
                value.isEmpty ? "-" : value,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black87),
              ),
            ],
          ),
        ),
      ],
    );
  }
}