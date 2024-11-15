import 'package:flutter/material.dart';
import 'package:uts_pemob/presentation/controllers/home_controller.dart';
import 'base_page.dart';

class FasilitasUmumPage extends StatelessWidget {
  final HomeController controller;

  FasilitasUmumPage(this.controller);

  final List<Map<String, String>> fasilitasData = [
    {'nama': 'Sekolah Dasar Negeri 01', 'jenis': 'Pendidikan'},
    {'nama': 'Puskesmas Desa Sejahtera', 'jenis': 'Kesehatan'},
    {'nama': 'Pasar Tradisional Desa Maju', 'jenis': 'Perdagangan'},
    {'nama': 'Masjid Al-Hikmah', 'jenis': 'Keagamaan'},
    {'nama': 'Lapangan Olahraga Desa', 'jenis': 'Olahraga'},
  ];

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mengubah warna judul menjadi hitam
            Text(
              'Fasilitas Umum Desa',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Menetapkan warna hitam untuk judul
              ),
            ),
            SizedBox(height: 16),
            // Menampilkan daftar fasilitas umum
            Expanded(
              child: ListView.builder(
                itemCount: fasilitasData.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    elevation: 4,
                    child: Container(
                      color: Colors.pink[50], // Warna kotak kalimat menjadi pink
                      child: ListTile(
                        contentPadding: EdgeInsets.all(16.0),
                        title: Text(
                          fasilitasData[index]['nama']!,
                          style: TextStyle(color: Colors.blue[800]), // Warna teks fasilitas menjadi biru
                        ),
                        subtitle: Text(
                          'Jenis: ${fasilitasData[index]['jenis']}',
                          style: TextStyle(color: Colors.black), // Warna teks jenis menjadi biru
                        ),
                        onTap: () {
                          // Aksi ketika fasilitas diklik, bisa ditambah dengan aksi detail
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            // Total fasilitas yang tersedia dengan warna hitam
            Text(
              'Total Fasilitas: ${fasilitasData.length} Lokasi',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // Menetapkan warna hitam untuk total fasilitas
              ),
            ),
          ],
        ),
      ),
      selectedIndex: 2, // Fasilitas Umum tab is selected
      controller: controller,
    );
  }
}
