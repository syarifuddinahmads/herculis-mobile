import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CreatePublisher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreatePublisherView(),
    );
  }
}

class CreatePublisherView extends StatefulWidget {
  @override
  _CreatePublisherState createState() => _CreatePublisherState();
}

class _CreatePublisherState extends State<CreatePublisherView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  File? _logoImage;

  void _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _logoImage = File(pickedFile.path);
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Proses data yang diisi oleh pengguna
      final name = _nameController.text;
      final phone = _phoneController.text;
      final address = _addressController.text;
      // Logo dapat diakses melalui _logoImage (File)

      // Lakukan sesuatu dengan data yang telah diisi

      // Clear inputan setelah data dikirim
      _nameController.clear();
      _phoneController.clear();
      _addressController.clear();
      setState(() {
        _logoImage = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat Data Baru'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              // Input Nama
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nama'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              // Input Nomor Telepon
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Nomor Telepon'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nomor Telepon tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              // Input Alamat
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Alamat'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Alamat tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              // Unggah Logo
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Text('Logo (Unggah gambar)'),
                  ),
                  SizedBox(width: 16.0),
                  // FlatButton(
                  //   onPressed: () {
                  //     _pickImage();
                  //   },
                  //   child: Text('Pilih Gambar'),
                  // ),
                ],
              ),
              if (_logoImage != null)
                Image.file(
                  _logoImage!,
                  height: 100,
                ),
              SizedBox(height: 16.0),
              // Tombol Simpan
              ElevatedButton(
                onPressed: () {
                  _submitForm();
                },
                child: Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
