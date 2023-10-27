import 'package:flutter/material.dart';

class ButtonTextViewWidget extends StatelessWidget {
  final Icon icon;
  final String text;
  final VoidCallback onPressed;
  final double height;

  const ButtonTextViewWidget(
      {super.key,
      required this.icon,
      this.text = '',
      required this.onPressed,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 8),
            Text(text),
          ],
        ),
      ),
    );
  }
}
