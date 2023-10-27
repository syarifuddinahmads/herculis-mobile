import 'package:flutter/material.dart';
import 'package:herculismobile/widgets/item_detail_transaction_widget.dart';

class DetailTransactionList extends StatelessWidget {
  final List<Map<String, String>> transactions; // Data transaksi

  const DetailTransactionList({
    super.key,
    required this.transactions,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return ItemDetailTransactionWidget(
          name: transaction['name']!,
          amount: transaction['amount']!,
          quantity: transaction['quantity']!,
          onTap: () {},
        );
      },
    );
  }
}
