import 'package:flutter/material.dart';

class TextareaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Warna bingkai
          width: 1.0, // Ketebalan bingkai
        ),
        borderRadius: BorderRadius.circular(8.0), // Sudut sudut bingkai
      ),
      child: TextField(
        maxLines: 3, // Menentukan jumlah baris dalam textarea
        decoration: InputDecoration(
          border: InputBorder.none, // Menghilangkan border bawaan TextField
          contentPadding: EdgeInsets.all(8.0), // Padding konten
          hintText: 'Tulis di sini...', // Teks hint
        ),
      ),
    );
  }
}
