import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,

      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        title: const Text(
          "Ini Halaman Tujuan",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Untuk berpindah ke halaman baru, gunakan "
                  "metode Navigator.pushNamed(). Metode ini akan "
                  "menambahkan halaman baru ke dalam tumpukan "
                  "Route yang dikelola oleh Navigator.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 25),

            // IKON WANITA BERHIJAB
            Center(
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "🧕",
                    style: TextStyle(
                      fontSize: 90,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Untuk menutup halaman kedua dan kembali ke "
                  "halaman pertama, gunakan metode Navigator.pop(). "
                  "Metode pop() akan menghapus Route saat ini dari "
                  "tumpukan Route yang dikelola oleh Navigator.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 25),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Kembali ke home",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
