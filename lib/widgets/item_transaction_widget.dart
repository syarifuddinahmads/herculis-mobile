import 'package:flutter/material.dart';

class ItemTransactionWidget extends StatelessWidget {
  final String transactionNumber;
  final String amount;
  final String description;
  final VoidCallback onTap;

  const ItemTransactionWidget({
    super.key,
    required this.transactionNumber,
    required this.amount,
    required this.description,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(transactionNumber),
                  Text(
                    amount,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
