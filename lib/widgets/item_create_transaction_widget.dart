import 'package:flutter/material.dart';
import 'package:herculismobile/widgets/quantity_widget.dart';

class ItemCreateTransactionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6, left: 12, right: 12, bottom: 6),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Koran Harian Sukses',
              ),
              Text(
                'Rp.250.000,00',
              ),
            ],
          ),
          QuantityCounter()
        ]),
      ),
    );
  }
}
