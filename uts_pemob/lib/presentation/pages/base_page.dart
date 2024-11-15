import 'package:flutter/material.dart';
import 'package:uts_pemob/presentation/controllers/home_controller.dart';

class BasePage extends StatelessWidget {
  final Widget bodyContent;
  final int selectedIndex;
  final HomeController _controller;

  const BasePage({
    Key? key,
    required this.bodyContent,
    required this.selectedIndex,
    required HomeController controller,
  })  : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIG Desa'),
      ),
      body: bodyContent,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Peta'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Wilayah'),
          BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'Fasilitas'),
          BottomNavigationBarItem(icon: Icon(Icons.report_problem), label: 'Laporan'),
          BottomNavigationBarItem(icon: Icon(Icons.campaign), label: 'Pengumuman'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _controller.onBottomNavTapped,
      ),
    );
  }
}