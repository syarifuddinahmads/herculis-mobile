import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herculismobile/widgets/button_widget.dart';
import 'package:herculismobile/widgets/textfield_widget.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                labelText: "Email", controller: TextEditingController()),
            const SizedBox(height: 16.0),
            TextFieldWidget(
                labelText: "Password",
                obscureText: true,
                controller: TextEditingController()),
            TextButton(
              style: const ButtonStyle(alignment: Alignment.centerRight),
              onPressed: () {
                Get.toNamed('/forgot-password');
              },
              child: const Text('Lupa kata sandi?'),
            ),
            ButtonWidget(
                width: MediaQuery.sizeOf(context).width,
                onPressed: () {
                  Get.toNamed('/');
                },
                text: "Login"),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman pendaftaran (register)
                // Ganti '/register' dengan rute yang sesuai di proyek Anda.
                Get.offNamed('/register');
              },
              child: Text('Belum punya akun? Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
