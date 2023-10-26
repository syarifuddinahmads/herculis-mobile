import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double? width;
  final double height;
  final EdgeInsetsGeometry? margin;
  final IconData? icon;
  final bool iconOnLeft;

  const ButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.width,
    this.height = 50,
    this.margin,
    this.icon,
    this.iconOnLeft = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: buttonColor,
            onPrimary: textColor,
            padding: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (icon != null && iconOnLeft) Icon(icon),
              Text(text),
              if (icon != null && !iconOnLeft) Icon(icon),
            ],
          ),
        ),
      ),
    );
  }
}
