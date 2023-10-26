import 'package:flutter/material.dart';
import 'package:herculismobile/widgets/textfield_widget.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ChartSalesCard(),
          ],
        ));
  }
}

class ChartSalesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Container(
        width: 200, // Lebar card
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Informasi Penjualan",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              height: 250,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
