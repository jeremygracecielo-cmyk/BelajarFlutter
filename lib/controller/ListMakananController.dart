import 'package:belajarflutter/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {

  List<MakananModel> dataMakanan = [
    MakananModel(namaMakanan: "Indomie", harga: "5.000", rating: '5', deskripsi: 'indomie campur telor ceplok yang akan menemani anda hemat dengan rasa luar biasa', review: 'indomie pastinya enak dong', gambarPath: 'Assets/Images/IndomieGoreng.jpeg'),
    MakananModel(namaMakanan: "Es Teh", harga: "3.000", rating: '4', deskripsi: 'Es teh yang akan menemani suasana panas mu', review: 'gila panas panas gini di temenin ama es teh yang harganya jos', gambarPath: 'Assets/Images/EsTeh.jpeg'),
    MakananModel(namaMakanan: "Nasi Goreng Ayam", harga: "12.000", rating: '5', deskripsi: 'Nasi goreng dengan ayam yang di goreng dengan sepenuh hati membuatnya rasanya enak dengan pedas yang pas', review: 'nasi gorengnya enak cuy, bawangnya bener bener kerasa', gambarPath: 'Assets/Images/NasiGoreng.jpeg'),
    MakananModel(namaMakanan: "Nasi Katsu", harga: "12.000", rating: '5', deskripsi: 'Nasi dengan ayam katsu dengan saus teriyaki yang akan menggugah seleera', review: 'gelo saos e josjis', gambarPath: 'Assets/Images/AyamKatsu.jpeg'),

  ];
}