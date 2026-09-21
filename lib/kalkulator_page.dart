import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  // Controller untuk mengambil nilai dari kolom input
  final TextEditingController _angka1Controller = TextEditingController();
  final TextEditingController _angka2Controller = TextEditingController();

  String _hasil = "0";

  // Fungsi untuk menghitung aritmatika
  void _hitung(String operator) {
    // Mengubah teks input menjadi angka (double), jika kosong/salah menjadi 0
    double angka1 = double.tryParse(_angka1Controller.text) ?? 0;
    double angka2 = double.tryParse(_angka2Controller.text) ?? 0;
    double hasilHitung = 0;

    setState(() {
      if (operator == '+') {
        hasilHitung = angka1 + angka2;
      } else if (operator == '-') {
        hasilHitung = angka1 - angka2;
      } else if (operator == 'x') {
        hasilHitung = angka1 * angka2;
      } else if (operator == '/') {
        // Menghindari error pembagian dengan nol
        hasilHitung = angka2 == 0 ? 0 : angka1 / angka2;
      }

      // Menampilkan hasil
      _hasil = hasilHitung.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aritmatika Simple'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Kolom input Angka 1
            TextField(
              controller: _angka1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Angka Pertama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Kolom input Angka 2
            TextField(
              controller: _angka2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Angka Kedua',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32),

            // Baris Tombol Aritmatika
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _hitung('+'),
                  style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(24)),
                  child: const Text('+', style: TextStyle(fontSize: 24)),
                ),
                ElevatedButton(
                  onPressed: () => _hitung('-'),
                  style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(24)),
                  child: const Text('-', style: TextStyle(fontSize: 24)),
                ),
                ElevatedButton(
                  onPressed: () => _hitung('x'),
                  style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(24)),
                  child: const Text('x', style: TextStyle(fontSize: 24)),
                ),
                ElevatedButton(
                  onPressed: () => _hitung('/'),
                  style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(24)),
                  child: const Text('/', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
            const SizedBox(height: 48),

            // Tampilan Hasil
            const Text(
              'Hasil:',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            Text(
              _hasil,
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Membersihkan memori saat halaman ditutup
    _angka1Controller.dispose();
    _angka2Controller.dispose();
    super.dispose();
  }
}