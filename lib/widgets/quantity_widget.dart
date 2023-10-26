import 'package:flutter/material.dart';

class QuantityCounter extends StatefulWidget {
  @override
  _QuantityCounterState createState() => _QuantityCounterState();
}

class _QuantityCounterState extends State<QuantityCounter> {
  int quantity = 1;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: decrement,
        ),
        Text(
          quantity.toString(),
          style: TextStyle(fontSize: 18.0),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: increment,
        ),
      ],
    );
  }
}
