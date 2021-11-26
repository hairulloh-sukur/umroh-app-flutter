// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umroh_app/routes/route_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Jadwal Sholat'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF549558),
                ),
                onPressed: () {
                  Get.toNamed(RouteName.jadwalSholatPage);
                },
              ),
              ElevatedButton(
                child: Text('Arah Kiblat'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF549558),
                ),
                onPressed: () {
                  Get.toNamed(RouteName.arahKiblatPage);
                },
              ),
              ElevatedButton(
                child: Text('Fasilitas Umum'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF549558),
                ),
                onPressed: () {
                  Get.toNamed(RouteName.fasilitasUmumPage);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
