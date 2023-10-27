import 'package:flutter/material.dart';
import 'package:herculismobile/widgets/button_textview_widget.dart';
import 'package:herculismobile/widgets/button_widget.dart';
import 'package:herculismobile/widgets/textfield_widget.dart';

class SubmitPaymentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pembayaran'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kode"),
                      Text(
                        "TR/INV/0000001",
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tanggal"),
                      Text(
                        "28-10-2023 16:45",
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Penerbit"),
                      Text(
                        "Jawa Pos",
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                ButtonTextViewWidget(
                    height: 250,
                    icon: const Icon(
                      Icons.upload_file,
                      size: 100,
                      color: Colors.grey,
                    ),
                    onPressed: () {}),
                const SizedBox(height: 20),
                TextFieldWidget(
                  labelText: 'Catatan',
                  controller: TextEditingController(),
                  maxLines: 5,
                ),
                const SizedBox(height: 30),
                ButtonWidget(onPressed: () {}, text: "Submit")
              ],
            ),
          )
        ],
      ),
    );
  }
}
