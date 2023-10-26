import 'package:flutter/material.dart';
import 'package:herculismobile/widgets/quantity_widget.dart';

class ItemCreateTransactionWidget extends StatelessWidget {
  final String itemName;
  final String itemPrice;

  ItemCreateTransactionWidget({
    required this.itemName,
    required this.itemPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6, left: 12, right: 12, bottom: 6),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  itemName,
                ),
                Text(
                  itemPrice,
                ),
              ],
            ),
            QuantityCounter(),
          ],
        ),
      ),
    );
  }
}
