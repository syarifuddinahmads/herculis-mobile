// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:herculismobile/widgets/button_widget.dart';

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
      body: Column(children: [
        Container(
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(children: [
                ButtonWidget(
                  onPressed: () {},
                  text: "Buat Transaksi",
                  width: MediaQuery.sizeOf(context).width,
                  margin: EdgeInsets.all(8.0),
                ),
                ButtonWidget(
                  onPressed: () {},
                  text: "Cari Transaksi",
                  width: MediaQuery.sizeOf(context).width,
                  margin: EdgeInsets.all(8.0),
                )
              ]),
            )),
        Container(
          // Mengisi tinggi sepenuhnya
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), // Sudut bulat kiri atas
              topRight: Radius.circular(20.0), // Sudut bulat kanan atas
            ),
            color: Colors.blue, // Warna latar belakang
          ),
          child: TabBarTransactionWidget(),
        )
      ]),
    );
  }
}

class TabBarTransactionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade500,
          title: Text('TabBar Widget'),
          bottom: TabBar(
            indicatorColor: Colors.lime,
            indicatorWeight: 5.0,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.only(top: 10.0),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: 'Cake',
                icon: Icon(
                  Icons.cake,
                  color: Colors.white,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              //child: Image.asset('images/android.png'),

              Tab(
                text: 'Radio',
                icon: Icon(
                  Icons.radio,
                  color: Colors.white,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              Tab(
                text: 'Gift',
                icon: Icon(
                  Icons.card_giftcard,
                  color: Colors.white,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Text(
              'This is Cake Tab',
              style: TextStyle(fontSize: 32),
            )),
            Center(
                child: Text(
              'This is Radio Tab',
              style: TextStyle(fontSize: 32),
            )),
            Center(
                child: Text(
              'This is Gift Tab',
              style: TextStyle(fontSize: 32),
            )),
          ],
        ),
      ),
    );
  }
}
