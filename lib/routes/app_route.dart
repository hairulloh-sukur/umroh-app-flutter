// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import './route_name.dart';
import '../ui/pages/fasilitas_umum/fasilitas_umum_page.dart';
import '../ui/pages/arah_kiblat/arah_kiblat_page.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/daftar/daftar_page.dart';
import '../ui/pages/jadwal_sholat/jadwal_sholat_page.dart';
import '../ui/pages/login/login_page.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RouteName.loginPage,
      page: () => LoginPage(),
    ),
    GetPage(
      name: RouteName.daftarPage,
      page: () => DaftarPage(),
    ),
    GetPage(
      name: RouteName.homePage,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.jadwalSholatPage,
      page: () => JadwalSholatPage(),
    ),
    GetPage(
      name: RouteName.arahKiblatPage,
      page: () => ArahKiblatPage(),
    ),
    GetPage(
      name: RouteName.fasilitasUmumPage,
      page: () => FasilitasUmumPage(),
    ),
  ];
}
