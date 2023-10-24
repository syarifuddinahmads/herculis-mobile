// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herculismobile/widgets/button_widget.dart';
import 'package:herculismobile/widgets/item_transaction_widget.dart';
import 'package:herculismobile/widgets/search_transaction_dialog.dart';

class TransactionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransactionList();
  }
}

class TransactionList extends StatelessWidget {
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
                  ),
                  ButtonWidget(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SearchTransactionDialog(
                            title: 'Judul Dialog',
                            content: 'Isi dari dialog ini.',
                            onClose: () {
                              Navigator.of(context).pop();
                            },
                          );
                        },
                      );
                    },
                    text: "Cari Transaksi",
                    width: MediaQuery.sizeOf(context).width,
                    margin: EdgeInsets.all(8.0),
                  )
                ]),
              )),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: <Widget>[
                  Container(
                    child: TabBar(
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
                        ListView(
                          children: [
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                          ],
                        ),
                        // Konten untuk Tab 2
                        ListView(
                          children: [
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                            ItemTransactionWidget(),
                          ],
                        ),
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
