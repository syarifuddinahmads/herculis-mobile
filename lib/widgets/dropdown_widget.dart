import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  final List<DropdownMenuItem<String>> dropdownItems;
  late final String? selectedValue;

  DropdownWidget({
    Key? key,
    required this.dropdownItems,
    required this.selectedValue,
  }) : super(key: key);

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: DropdownButtonFormField<String>(
            value: widget.selectedValue,
            onChanged: (newValue) {
              // Handle the selection here, if needed
              setState(() {
                widget.selectedValue = newValue;
              });
            },
            items: widget.dropdownItems,
          ),
        ),
      ],
    );
  }
}
