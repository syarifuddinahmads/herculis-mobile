import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herculismobile/widgets/button_textview_widget.dart';

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
          Padding(
            padding: EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                      'https://ui-avatars.com/api/?name=Herculis+Mobile'), // Ganti dengan URL avatar Anda
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Herculis Mobile',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        'Herculis Mobile System Distributor',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(height: 20.0),
                      ButtonTextViewWidget(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          Get.toNamed('edit-account');
                        },
                        height: 25,
                        text: "Edit Akun",
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(children: [
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
            ]),
          )
          // Tambahkan menu lainnya di sini
        ],
      ),
    ));
  }
}
