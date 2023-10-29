import 'package:flutter/material.dart';
import 'package:herculismobile/widgets/button_widget.dart';
import 'package:herculismobile/widgets/textfield_widget.dart';

class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lupa Kata Sandi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Masukkan alamat email Anda di bawah ini, dan kami akan mengirimkan instruksi pemulihan kata sandi ke email Anda.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            TextFieldWidget(
                labelText: "Email", controller: TextEditingController()),
            SizedBox(height: 16.0),
            ButtonWidget(onPressed: () {}, text: 'Submit'),
          ],
        ),
      ),
    );
  }
}
