import 'package:belajarflutter/components/costum_textfield.dart';
import 'package:belajarflutter/controller/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final KalkulatorController controller = Get.put(KalkulatorController());

  final TextEditingController txtangka1 = TextEditingController();
  final TextEditingController txtangka2 = TextEditingController();

  bool validasiInput() {
    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
      Get.snackbar(
        "Peringatan",
        "Angka 1 dan Angka 2 tidak boleh kosong!",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Kalkulator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextfield(myHint: "Input angka 1", txtController: txtangka1),
            const SizedBox(height: 10),
            CustomTextfield(myHint: "Input angka 2", txtController: txtangka2),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (validasiInput()) {
                      controller.tambah(
                        double.parse(txtangka1.text),
                        double.parse(txtangka2.text),
                      );
                    }
                  },
                  child: const Text("Tambah"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (validasiInput()) {
                      controller.kurang(
                        double.parse(txtangka1.text),
                        double.parse(txtangka2.text),
                      );
                    }
                  },
                  child: const Text("Kurang"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (validasiInput()) {
                      controller.kali(
                        double.parse(txtangka1.text),
                        double.parse(txtangka2.text),
                      );
                    }
                  },
                  child: const Text("Kali"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (validasiInput()) {
                      controller.bagi(
                        double.parse(txtangka1.text),
                        double.parse(txtangka2.text),
                      );
                    }
                  },
                  child: const Text("Bagi"),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Output Hasil
            Obx(
                  () => Text(
                "Hasil: ${controller.hasilHitung.value}",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}