import 'package:flutter/material.dart';
import 'package:uts_pemob/presentation/controllers/home_controller.dart';
import 'base_page.dart';

class PetaInteraktifPage extends StatelessWidget {
  final HomeController controller;

  PetaInteraktifPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Center(  // Menggunakan Center untuk menyusun konten
        child: Stack(  // Menempatkan konten di atas peta
          children: [
            // Full background with the image - Menggunakan InteractiveViewer untuk zoom
            Positioned.fill(
              child: InteractiveViewer(
                panEnabled: true,  // Memungkinkan geser gambar
                boundaryMargin: EdgeInsets.all(10),  // Memberikan margin pada area zoom
                minScale: 0.1,  // Skalakan gambar ke bawah
                maxScale: 4.0,  // Skalakan gambar ke atas
                child: Image.asset(
                  'assets/images/peta.webp', // Path gambar peta
                  fit: BoxFit.cover,  // Menjaga gambar tetap terformat dengan baik
                ),
              ),
            ),
            // Content at the top left (Peta Interaktif Desa)
            Positioned(
              top: 16,
              left: 16,
              child: Container(
                padding: EdgeInsets.all(8),  // Padding untuk memberikan jarak antara teks dan latar belakang
                color: Colors.white,  // Latar belakang putih
                child: Text(
                  'Peta Interaktif Desa',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(123, 9, 1, 44)),
                ),
              ),
            ),
            // Content at the bottom left (Lokasi dan Deskripsi)
            Positioned(
              bottom: 32,  // Memberikan jarak lebih agar teks tidak terlalu dekat ke bawah
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),  // Padding untuk memberikan jarak antara teks dan latar belakang
                    color: Colors.white,  // Latar belakang putih
                    child: Text(
                      'Lokasi Desa: -6.200000, 106.816666', // Koordinat sebagai teks
                      style: TextStyle(fontSize: 12, color: Color.fromARGB(123, 9, 1, 44)), // Ukuran teks lebih kecil
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      selectedIndex: 0, // Peta Interaktif tab is selected
      controller: controller,
    );
  }
}
