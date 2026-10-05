import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  var namaLengkap = "".obs;
  var jenisKelamin = "".obs;
  var email = "".obs;
  var noWA = "".obs;

  @override
  void onInit() {
    super.onInit();

    final Map<String, dynamic>? arguments = Get.arguments;

    if (arguments != null) {
      namaLengkap.value = arguments['nama_lengkap'] ?? "-";
      jenisKelamin.value = arguments['jenis_kelamin'] ?? "-";
      email.value = arguments['email'] ?? "-";
      noWA.value = arguments['no_wa'] ?? "-";
    }
  }
}