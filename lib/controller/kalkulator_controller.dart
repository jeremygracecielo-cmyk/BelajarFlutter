import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs;

  void tambah(double angka1, double angka2) {
    double hasil = angka1 + angka2;
    hasilHitung.value = hasil;
    Get.snackbar("Hasil Tambah", "Hasilnya $hasil");
  }

  void kurang(double angka1, double angka2) {
    double hasil = angka1 - angka2;
    hasilHitung.value = hasil;
    Get.snackbar("Hasil Kurang", "Hasilnya $hasil");
  }

  void kali(double angka1, double angka2) {
    double hasil = angka1 * angka2;
    hasilHitung.value = hasil;
    Get.snackbar("Hasil Kali", "Hasilnya $hasil");
  }

  void bagi(double angka1, double angka2) {
    if (angka2 == 0) {
      Get.snackbar(
        "Peringatan",
        "Angka 2 tidak boleh 0 untuk pembagian!",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    double hasil = angka1 / angka2;
    hasilHitung.value = hasil;
    Get.snackbar("Hasil Bagi", "Hasilnya $hasil");
  }
}