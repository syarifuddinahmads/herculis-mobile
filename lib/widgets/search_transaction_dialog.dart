import 'package:flutter/material.dart';

class SearchTransactionDialog extends StatelessWidget {
  final String title;
  final String content;
  final Function onClose;

  SearchTransactionDialog(
      {required this.title, required this.content, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Tutup'),
        ),
      ],
    );
  }
}
