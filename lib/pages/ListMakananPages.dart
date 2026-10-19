import 'package:flutter/material.dart';
import 'package:belajarflutter/controller/ListMakananController.dart';
import 'package:belajarflutter/routes.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Makanan"),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: controller.dataMakanan.length,
        itemBuilder: (context, index) {
          final makanan = controller.dataMakanan[index];
          return Card(
            elevation: 2,
            margin: EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                Get.toNamed(Routes.detail_makanan, arguments: makanan);
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                title: Text(
                    makanan.namaMakanan,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                ),
                subtitle: Text(
                    "Rp ${makanan.harga}",
                    style: TextStyle(fontSize: 15, color: Colors.green[700])
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20),
              ),
            ),
          );
        },
      ),
    );
  }
}