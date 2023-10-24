import 'package:flutter/material.dart';
import 'package:herculismobile/widgets/button_widget.dart';
import 'package:herculismobile/widgets/dropdown_widget.dart';
import 'package:herculismobile/widgets/item_create_transaction_widget.dart';
import 'package:herculismobile/widgets/quantity_widget.dart';
import 'package:herculismobile/widgets/textarea_widget.dart';

class CreateTransactionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat Transaksi'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: DropdownWidget(),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ItemCreateTransactionWidget(),
                ItemCreateTransactionWidget(),
                ItemCreateTransactionWidget(),
                ItemCreateTransactionWidget(),
                ItemCreateTransactionWidget(),
                ItemCreateTransactionWidget(),
                ItemCreateTransactionWidget(),
                ItemCreateTransactionWidget(),
                ItemCreateTransactionWidget(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 190,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total"),
                  Text(
                    "Rp. 250.000,00",
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Divider(
                height: 12,
              ),
              TextareaWidget(),
              Divider(
                height: 12,
              ),
              ButtonWidget(
                onPressed: () {},
                text: "Submit",
                width: MediaQuery.sizeOf(context).width,
              )
            ],
          ),
        ),
      ),
    );
  }
}
