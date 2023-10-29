import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateInputFieldWidget extends StatefulWidget {
  final String labelTextField;
  TextEditingController dateController;
  DateTime selectedDate;

  DateInputFieldWidget({
    Key? key,
    required this.labelTextField,
    required this.dateController,
    required this.selectedDate,
  }) : super(key: key);

  @override
  _DateInputFieldWidgetState createState() => _DateInputFieldWidgetState();
}

class _DateInputFieldWidgetState extends State<DateInputFieldWidget> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != widget.selectedDate) {
      setState(() {
        widget.selectedDate = picked;
        widget.dateController.text =
            "${widget.selectedDate.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: AbsorbPointer(
        child: TextFormField(
          controller: widget.dateController,
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            labelText: widget.labelTextField,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            contentPadding: EdgeInsets.all(12.0),
            suffixIcon: GestureDetector(
              onTap: () => _selectDate(context),
              child: Icon(Icons.calendar_today),
            ),
          ),
        ),
      ),
    );
  }
}
