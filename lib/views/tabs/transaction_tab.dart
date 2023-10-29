import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herculismobile/widgets/button_widget.dart';
import 'package:herculismobile/widgets/date_input_field_widget.dart';
import 'package:herculismobile/widgets/dropdown_input_field_widget.dart';
import 'package:herculismobile/widgets/list_transaction.dart';
import 'package:herculismobile/widgets/search_transaction_dialog.dart';

class TransactionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransactionTabView();
  }
}

class TransactionTabView extends StatelessWidget {
  final List<Map<String, String>> newTransactions = [
    {
      'number': 'TR/000001',
      'amount': 'Rp. 250.000,00',
      'description': 'Order Kuota - Jawa Pos Indonesia'
    },
    {
      'number': 'TR/000002',
      'amount': 'Rp. 150.000,00',
      'description': 'Pembayaran Listrik'
    },
    {
      'number': 'TR/000003',
      'amount': 'Rp. 500.000,00',
      'description': 'Belanja Online'
    },
  ];

  final List<Map<String, String>> listTransactions = [
    {
      'number': 'TR/000001',
      'amount': 'Rp. 250.000,00',
      'description': 'Order Kuota - Jawa Pos Indonesia'
    },
    {
      'number': 'TR/000002',
      'amount': 'Rp. 150.000,00',
      'description': 'Pembayaran Listrik'
    },
    {
      'number': 'TR/000003',
      'amount': 'Rp. 500.000,00',
      'description': 'Belanja Online'
    },
    {
      'number': 'TR/000001',
      'amount': 'Rp. 250.000,00',
      'description': 'Order Kuota - Jawa Pos Indonesia'
    },
    {
      'number': 'TR/000002',
      'amount': 'Rp. 150.000,00',
      'description': 'Pembayaran Listrik'
    },
    {
      'number': 'TR/000003',
      'amount': 'Rp. 500.000,00',
      'description': 'Belanja Online'
    },
    {
      'number': 'TR/000001',
      'amount': 'Rp. 250.000,00',
      'description': 'Order Kuota - Jawa Pos Indonesia'
    },
    {
      'number': 'TR/000002',
      'amount': 'Rp. 150.000,00',
      'description': 'Pembayaran Listrik'
    },
    {
      'number': 'TR/000003',
      'amount': 'Rp. 500.000,00',
      'description': 'Belanja Online'
    },
    {
      'number': 'TR/000001',
      'amount': 'Rp. 250.000,00',
      'description': 'Order Kuota - Jawa Pos Indonesia'
    },
    {
      'number': 'TR/000002',
      'amount': 'Rp. 150.000,00',
      'description': 'Pembayaran Listrik'
    },
    {
      'number': 'TR/000003',
      'amount': 'Rp. 500.000,00',
      'description': 'Belanja Online'
    },
  ];

  String _selectedTypeTransaction = '';
  String _selectedStatusTransaction = '';

  static const List<String> _dropdownTypeTransaction = [
    'Order Kuota',
    'Retur Kuota',
    'Sales',
  ];

  static const List<String> _dropdownStatusTransaction = [
    'Sudah Dibayar',
    'Belum Dibayar'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaksi'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.sizeOf(context).width,
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(children: [
                  ButtonWidget(
                    onPressed: () {
                      Get.toNamed("transaction/create");
                    },
                    text: "Buat Transaksi",
                    width: MediaQuery.sizeOf(context).width,
                    margin: EdgeInsets.all(8.0),
                    icon: Icons.add,
                  ),
                  ButtonWidget(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SearchTransactionDialog(
                            title: 'Cari Transaksi',
                            onClose: () {
                              Navigator.of(context).pop();
                            },
                            action: [],
                            content: Container(
                              height: 310,
                              child: Column(children: [
                                DateInputFieldWidget(
                                  labelTextField: "Tanggal Awal",
                                  dateController: TextEditingController(),
                                  selectedDate: DateTime.now(),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                DateInputFieldWidget(
                                  labelTextField: "Tanggal Akhir",
                                  dateController: TextEditingController(),
                                  selectedDate: DateTime.now(),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                DropdownInputFieldWidget(
                                    controller: TextEditingController(),
                                    labelTextField: 'Type Transaksi',
                                    options: _dropdownTypeTransaction,
                                    selectedOption: _selectedTypeTransaction),
                                const SizedBox(
                                  height: 16,
                                ),
                                DropdownInputFieldWidget(
                                    controller: TextEditingController(),
                                    labelTextField: 'Status Transaksi',
                                    options: _dropdownStatusTransaction,
                                    selectedOption: _selectedStatusTransaction),
                                const SizedBox(
                                  height: 16,
                                ),
                                ButtonWidget(onPressed: () {}, text: 'Submit')
                              ]),
                            ),
                          );
                        },
                      );
                    },
                    text: "Cari Transaksi",
                    width: MediaQuery.sizeOf(context).width,
                    margin: EdgeInsets.all(8.0),
                    icon: Icons.search,
                  )
                ]),
              )),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: <Widget>[
                  Container(
                    child: const TabBar(
                      labelColor: Colors.black,
                      tabs: [
                        Tab(
                          text: 'Transaksi Terbaru',
                        ),
                        Tab(text: 'Daftar Transaksi'),
                      ],
                    ),
                  ),
                  Expanded(
                    // Tinggi kontainer untuk konten tab
                    child: TabBarView(
                      children: [
                        // Konten untuk Tab 1
                        TransactionList(transactions: newTransactions),
                        // Konten untuk Tab 2
                        TransactionList(transactions: listTransactions),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
