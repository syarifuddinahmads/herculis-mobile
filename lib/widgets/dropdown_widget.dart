import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String selectedValue = 'Nilai 1';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Warna bingkai
          width: 2.0, // Ketebalan bingkai
        ),
        borderRadius: BorderRadius.circular(8.0), // Sudut sudut bingkai
      ),
      child: DropdownButtonFormField<String>(
        value: selectedValue,
        onChanged: (newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: <String>['Nilai 1', 'Nilai 2', 'Nilai 3', 'Nilai 4']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
