import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implementasi logika masuk di sini
                Get.offNamed('/');
              },
              child: Text('Masuk'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman pendaftaran (register)
                // Ganti '/register' dengan rute yang sesuai di proyek Anda.
                Get.offNamed('/register');
              },
              child: Text('Belum punya akun? Daftar di sini'),
            ),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman lupa kata sandi (forgot password)
                // Ganti '/forgot_password' dengan rute yang sesuai di proyek Anda.
                Get.toNamed('/forgot-password');
              },
              child: Text('Lupa kata sandi?'),
            ),
          ],
        ),
      ),
    );
  }
}
