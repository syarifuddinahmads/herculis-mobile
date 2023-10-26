import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herculismobile/widgets/item_transaction_widget.dart';

class TransactionList extends StatelessWidget {
  final List<Map<String, String>> transactions; // Data transaksi

  TransactionList({
    required this.transactions,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return ItemTransactionWidget(
          transactionNumber: transaction['number']!,
          amount: transaction['amount']!,
          description: transaction['description']!,
          onTap: () {
            Get.toNamed('/transaction/detail');
          },
        );
      },
    );
  }
}
