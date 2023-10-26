import 'package:flutter/material.dart';
import 'package:herculismobile/widgets/button_widget.dart';
import 'package:herculismobile/widgets/dropdown_widget.dart';
import 'package:herculismobile/widgets/item_create_transaction_widget.dart';
import 'package:herculismobile/widgets/textfield_widget.dart';

class CreateTransactionView extends StatelessWidget {
  String? _selectedOption;

  List<DropdownMenuItem<String>> _dropdownItems = [
    DropdownMenuItem(value: 'Option 1', child: Text('Option 1')),
    DropdownMenuItem(value: 'Option 2', child: Text('Option 2')),
    DropdownMenuItem(value: 'Option 3', child: Text('Option 3')),
  ];

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
              child: DropdownWidget(
                dropdownItems: _dropdownItems,
                selectedValue: _selectedOption,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ItemCreateTransactionWidget(
                    itemName: "Koran", itemPrice: "2000")
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              TextFieldWidget(
                labelText: 'Catatan',
                controller: TextEditingController(),
                maxLines: 2,
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
