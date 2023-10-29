import 'package:flutter/material.dart';
import 'package:herculismobile/widgets/button_widget.dart';
import 'package:herculismobile/widgets/dropdown_input_field_widget.dart';
import 'package:herculismobile/widgets/item_create_transaction_widget.dart';
import 'package:herculismobile/widgets/textfield_widget.dart';

class CreateTransactionView extends StatelessWidget {
  String _selectedOption = '';

  static const List<String> _dropdownItems = ["Jawa Pos", "Tempo"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buat Transaksi'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: DropdownInputFieldWidget(
                controller: TextEditingController(),
                labelTextField: 'Pilih Publisher',
                options: _dropdownItems,
                selectedOption: _selectedOption,
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
          padding: const EdgeInsets.all(12.0),
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
