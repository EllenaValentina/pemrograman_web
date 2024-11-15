import 'package:flutter/material.dart';
import 'package:uts_pemob/presentation/controllers/home_controller.dart';
import 'base_page.dart';

class DataWilayahPage extends StatelessWidget {
  final HomeController controller;

  DataWilayahPage(this.controller);

  final List<Map<String, String>> wilayahData = [
    {'nama': 'Desa A', 'luas': '10 km²', 'penduduk': '1500'},
    {'nama': 'Desa B', 'luas': '20 km²', 'penduduk': '2000'},
    {'nama': 'Desa C', 'luas': '15 km²', 'penduduk': '1800'},
  ];

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data Wilayah Desa',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 15, 11, 11), // Teks putih untuk kontras dengan latar belakang
              ),
            ),
            SizedBox(height: 16),
            // Menampilkan informasi batas wilayah
            Text(
              'Batas Wilayah: \n'
              'Utara - Sungai A\n'
              'Selatan - Jalan Raya B\n'
              'Timur - Kebun C\n'
              'Barat - Bukit D',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 15, 11, 11), // Warna teks lebih ringan
              ),
            ),
            SizedBox(height: 16),
            // Menampilkan jumlah RT/RW
            Text(
              'Jumlah RT/RW: 10 RT / 5 RW',
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 15, 11, 11), // Warna teks lebih ringan
              ),
            ),
            SizedBox(height: 32),
            // List data wilayah
            Expanded(
              child: ListView.builder(
                itemCount: wilayahData.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    elevation: 4,
                    color: Colors.pink[50], // Warna pink pastel untuk card
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16.0),
                      title: Text(
                        wilayahData[index]['nama']!,
                        style: TextStyle(
                          color: Colors.blue[800], // Warna teks dark blue untuk judul
                        ),
                      ),
                      subtitle: Text(
                        'Luas: ${wilayahData[index]['luas']}\n'
                        'Penduduk: ${wilayahData[index]['penduduk']}',
                        style: TextStyle(
                          color: Colors.blueGrey, // Warna dark blue-grey untuk subtitle
                        ),
                      ),
                      onTap: () {
                        // Aksi ketika wilayah diklik, bisa ditambah dengan aksi detail wilayah
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      selectedIndex: 1, // Data Wilayah tab is selected
      controller: controller,
    );
  }
}
