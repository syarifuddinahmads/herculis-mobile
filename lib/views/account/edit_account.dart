import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herculismobile/widgets/button_textview_widget.dart';
import 'package:herculismobile/widgets/button_widget.dart';
import 'package:herculismobile/widgets/textfield_widget.dart';

class EditAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Akun'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Icon(
              Icons.star,
              size: 100,
              color: Colors.blue,
            ),
            TextFieldWidget(
                labelText: "Nama", controller: TextEditingController()),
            const SizedBox(height: 16.0),
            TextFieldWidget(
                labelText: "Email", controller: TextEditingController()),
            const SizedBox(height: 16.0),
            TextFieldWidget(
                labelText: "Nomor Telepon",
                controller: TextEditingController()),
            const SizedBox(height: 16.0),
            TextFieldWidget(
                labelText: "Alamat Lengkap",
                maxLines: 5,
                controller: TextEditingController()),
            const SizedBox(height: 16.0),
            ButtonTextViewWidget(
                icon: Icon(Icons.upload_file),
                onPressed: () {},
                text: "Upload KTP",
                height: 50),
            const SizedBox(height: 16.0),
            ButtonWidget(
                width: MediaQuery.sizeOf(context).width,
                onPressed: () {
                  Get.offAllNamed('/');
                },
                text: "Update Akun"),
          ],
        ),
      ),
    );
  }
}
