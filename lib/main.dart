import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herculismobile/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Herculis',
      getPages: AppPages.routes,
      initialRoute: '/', // Rute awal aplikasi
    ),
  );
}
