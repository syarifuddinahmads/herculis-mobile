import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Akun'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.business),
            title: Text('Publisher'),
            onTap: () {
              Get.toNamed("publisher");
            },
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('Newspaper'),
            onTap: () {
              Get.toNamed("newspaper");
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifikasi'),
            onTap: () {
              // Tambahkan navigasi ke halaman notifikasi
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Riwayat'),
            onTap: () {
              // Tambahkan navigasi ke halaman riwayat
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Keluar'),
            onTap: () {
              Get.offAllNamed("login");
            },
          ),
          // Tambahkan menu lainnya di sini
        ],
      ),
    ));
  }
}
