import 'package:flutter/material.dart';
import 'package:uts_pemob/presentation/controllers/home_controller.dart';
import 'base_page.dart';

class PengumumanDesaPage extends StatelessWidget {
  final HomeController controller;

  PengumumanDesaPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0), // Padding di sekitar konten
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Pengumuman
            Text(
              'Pengumuman Desa',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 15, 11, 11), // Warna biru gelap untuk judul
              ),
            ),
            SizedBox(height: 16),
            
            // Daftar pengumuman menggunakan ListView untuk scrollable
            Expanded(
              child: ListView(
                children: [
                  _buildPengumumanCard(
                    'Gotong royong desa akan dilaksanakan pada tanggal 20 November.',
                  ),
                  _buildPengumumanCard(
                    'Rapat warga di Balai Desa pada pukul 19:00, tanggal 25 November.',
                  ),
                  _buildPengumumanCard(
                    'Vaksinasi gratis di Puskesmas Desa pada tanggal 28 November.',
                  ),
                  _buildPengumumanCard(
                    'Pendaftaran bantuan sosial dibuka hingga akhir bulan.',
                  ),
                  _buildPengumumanCard(
                    'Lomba kebersihan antar RT diadakan pada awal bulan depan.',
                  ),
                ],
              ),
            ),
            
            // Total Pengumuman
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'Total Pengumuman: 5 Kegiatan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 15, 11, 11), // Warna biru gelap untuk teks penting
                ),
              ),
            ),
          ],
        ),
      ),
      selectedIndex: 4, // Pengumuman tab is selected
      controller: controller,
    );
  }

  // Widget untuk card pengumuman
  Widget _buildPengumumanCard(String text) {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      elevation: 4,
      color: const Color.fromARGB(255, 78, 129, 240), // Latar belakang dark untuk card
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: const Color.fromARGB(255, 15, 11, 11), // Teks putih untuk kontras dengan latar belakang gelap
          ),
        ),
      ),
    );
  }
}
