import 'package:uts_pemob/core/navigation/navigation_service.dart';

class NavigateToPageUseCase {
  final NavigationService _navigationService;

  NavigateToPageUseCase(this._navigationService);

  void execute(int index) {
    switch (index) {
      case 0:
        _navigationService.navigateTo('/peta');
        break;
      case 1:
        _navigationService.navigateTo('/data_wilayah');
        break;
      case 2:
        _navigationService.navigateTo('/fasilitas_umum');
        break;
      case 3:
        _navigationService.navigateTo('/laporan');
        break;
      case 4:
        _navigationService.navigateTo('/pengumuman');
        break;
      default:
        throw Exception('Invalid page index');
    }
  }
}
