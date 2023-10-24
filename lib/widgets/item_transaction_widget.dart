import 'package:flutter/material.dart';

class ItemTransactionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6, left: 12, right: 12, bottom: 6),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("TR/000001"),
              Text(
                "Rp. 250.000,00",
                textAlign: TextAlign.end,
              ),
            ],
          ),
          Text(
            "Order Kuota - Jawa Pos Indonesia",
          )
        ]),
      ),
    );
  }
}
