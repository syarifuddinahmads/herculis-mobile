import 'package:flutter/material.dart';

class SearchTransactionDialog extends StatelessWidget {
  final String title;
  final Function onClose;
  final Widget content;
  final List<Widget> action;

  const SearchTransactionDialog(
      {super.key,
      required this.title,
      required this.content,
      required this.onClose,
      required this.action});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: content,
      actions: action,
    );
  }
}
