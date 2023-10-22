import 'package:flutter/material.dart';

class CreateNewspaper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateNewspaperView(),
    );
  }
}

class CreateNewspaperView extends StatefulWidget {
  @override
  _CreateNewspaperState createState() => _CreateNewspaperState();
}

class _CreateNewspaperState extends State<CreateNewspaperView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  late String? _selectedPublisher = null;

  // Daftar penerbit (contoh)
  final List<String> publishers = [
    'Penerbit A',
    'Penerbit B',
    'Penerbit C',
    // Tambahkan penerbit lainnya di sini
  ];

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final publisher = _selectedPublisher;

      // Lakukan sesuatu dengan data yang diisi
      print('Nama: $name');
      print('Penerbit: $publisher');

      // Clear inputan setelah data dikirim
      _nameController.clear();
      setState(() {
        _selectedPublisher = "";
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
          child: Column(
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
              // Dropdown Penerbit
              DropdownButtonFormField<String>(
                value: _selectedPublisher,
                onChanged: (value) {
                  setState(() {
                    _selectedPublisher = value!;
                  });
                },
                items: publishers.map((String publisher) {
                  return DropdownMenuItem<String>(
                    value: publisher,
                    child: Text(publisher),
                  );
                }).toList(),
                hint: Text('Pilih Penerbit'),
                validator: (value) {
                  if (value == null) {
                    return 'Pilih penerbit';
                  }
                  return null;
                },
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
