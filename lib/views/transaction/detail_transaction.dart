import 'package:flutter/material.dart';
import 'package:herculismobile/widgets/button_widget.dart';
import 'package:herculismobile/widgets/list_detail_transaction.dart';

class DetailTransactionView extends StatelessWidget {
  final List<Map<String, String>> detailTransactions = [
    {'name': 'Koran Sindo', 'amount': 'Rp. 250.000,00', 'quantity': '5'},
    {'name': 'Koran Jawa', 'amount': 'Rp. 250.000,00', 'quantity': '5'},
    {'name': 'Koran MNC', 'amount': 'Rp. 250.000,00', 'quantity': '5'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Transaksi'),
      ),
      body: Column(
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
          Expanded(
            child: DetailTransactionList(
              transactions: detailTransactions,
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 150,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total"),
                  Text(
                    "Rp. 250.000,00",
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Catatan"),
                  Text(
                    "-",
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonWidget(
                    icon: Icons.file_download,
                    onPressed: () {},
                    text: "Laporan",
                    width: MediaQuery.sizeOf(context).width / 3.5,
                  ),
                  ButtonWidget(
                    icon: Icons.payment,
                    buttonColor: Colors.green,
                    onPressed: () {},
                    text: "Pembayaran",
                    width: MediaQuery.sizeOf(context).width / 2.7,
                  ),
                  ButtonWidget(
                    icon: Icons.receipt,
                    buttonColor: Colors.deepPurple,
                    onPressed: () {},
                    text: "Terima",
                    width: MediaQuery.sizeOf(context).width / 3.5,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
