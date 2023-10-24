import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransactionDetailView(),
    );
  }
}

class TransactionDetailView extends StatefulWidget {
  @override
  _TransactionDetailState createState() => _TransactionDetailState();
}

class _TransactionDetailState extends State<TransactionDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat Data Baru'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text("Transaction Detail"),
      ),
    );
  }
}
