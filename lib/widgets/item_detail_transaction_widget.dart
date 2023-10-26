import 'package:flutter/material.dart';

class ItemDetailTransactionWidget extends StatelessWidget {
  final String name;
  final String amount;
  final String quantity;
  final VoidCallback onTap;

  const ItemDetailTransactionWidget({
    super.key,
    required this.name,
    required this.amount,
    required this.quantity,
    required this.onTap, // Tambahkan properti onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Menggunakan GestureDetector untuk menangani onTap
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 6, left: 12, right: 12, bottom: 6),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(name),
              Text(
                'x ' + quantity,
                textAlign: TextAlign.end,
              ),
              Text(
                amount,
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
