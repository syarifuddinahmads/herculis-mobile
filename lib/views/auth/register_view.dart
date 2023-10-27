import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herculismobile/widgets/button_widget.dart';
import 'package:herculismobile/widgets/textfield_widget.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Akun'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.star,
              size: 100,
              color: Colors.blue,
            ),
            const SizedBox(height: 16.0),
            TextFieldWidget(
                labelText: "Nama", controller: TextEditingController()),
            const SizedBox(height: 16.0),
            TextFieldWidget(
                labelText: "Email", controller: TextEditingController()),
            const SizedBox(height: 16.0),
            TextFieldWidget(
                labelText: "Password",
                obscureText: true,
                controller: TextEditingController()),
            const SizedBox(height: 16.0),
            ButtonWidget(
                width: MediaQuery.sizeOf(context).width,
                onPressed: () {
                  Get.toNamed('/');
                },
                text: "Daftar"),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman pendaftaran (register)
                // Ganti '/register' dengan rute yang sesuai di proyek Anda.
                Get.offNamed('/login');
              },
              child: Text('Sudah punya akun? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
