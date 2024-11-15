import 'package:flutter/material.dart';
import 'package:uts_pemob/domain/usecases/navigate_to_page.dart';
import 'package:uts_pemob/presentation/pages/data_wilayah.dart';
import 'package:uts_pemob/presentation/pages/fasilitas_umum.dart';
import 'package:uts_pemob/presentation/pages/laporan.dart';
import 'package:uts_pemob/presentation/pages/pengumuman.dart';
import 'package:uts_pemob/presentation/pages/peta_interaktif.dart';
import 'package:uts_pemob/core/navigation/navigation_service.dart';
import 'package:uts_pemob/presentation/controllers/home_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize services and controllers
    final navigationService = NavigationService();
    final navigateToPageUseCase = NavigateToPageUseCase(navigationService);
    final homeController = HomeController(navigateToPageUseCase);

    return MaterialApp(
      navigatorKey: navigationService.navigatorKey, // Use global navigator key
      title: 'SIG Desa Segedong',
      debugShowCheckedModeBanner: false,
      initialRoute: '/data_wilayah',
      routes: {
        '/peta': (context) => PetaInteraktifPage(homeController),
        '/data_wilayah': (context) => DataWilayahPage(homeController),
        '/fasilitas_umum': (context) => FasilitasUmumPage(homeController),
        '/laporan': (context) => LaporanMasyarakatPage(homeController),
        '/pengumuman': (context) => PengumumanDesaPage(homeController),
      },
    );
  }
}
