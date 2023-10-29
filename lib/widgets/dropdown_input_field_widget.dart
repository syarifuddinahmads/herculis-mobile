import 'package:flutter/material.dart';

class DropdownInputFieldWidget extends StatefulWidget {
  final String labelTextField;
  final List<String> options;
  String selectedOption;
  final TextEditingController controller;

  DropdownInputFieldWidget(
      {Key? key,
      required this.labelTextField,
      required this.options,
      required this.selectedOption,
      required this.controller})
      : super(key: key);

  @override
  _DropdownInputFieldWidgetState createState() =>
      _DropdownInputFieldWidgetState();
}

class _DropdownInputFieldWidgetState extends State<DropdownInputFieldWidget> {
  @override
  void initState() {
    super.initState();
    widget.controller.text = widget.selectedOption;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showDropdown(context),
      child: AbsorbPointer(
        child: TextFormField(
          controller: widget.controller,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: widget.labelTextField,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            contentPadding: EdgeInsets.all(12.0),
            suffixIcon: Icon(Icons.arrow_drop_down),
          ),
        ),
      ),
    );
  }

  void _showDropdown(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(widget.labelTextField),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.options.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(widget.options[index]),
                  onTap: () {
                    setState(() {
                      widget.selectedOption = widget.options[index];
                      widget.controller.text = widget.options[index];
                    });
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
