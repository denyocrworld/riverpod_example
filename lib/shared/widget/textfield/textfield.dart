import 'package:flutter/material.dart';

class ExTextField extends StatefulWidget {
  final String? value;
  final Function(String value) onChanged;
  final String? label;
  final String? hintText;

  const ExTextField({
    Key? key,
    required this.onChanged,
    this.value,
    this.label,
    this.hintText,
  }) : super(key: key);

  @override
  State<ExTextField> createState() => _ExTextFieldState();
}

class _ExTextFieldState extends State<ExTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(),
      child: TextFormField(
        initialValue: widget.value,
        maxLength: 20,
        decoration: InputDecoration(
          labelText: widget.label ?? "",
          labelStyle: const TextStyle(
            color: Colors.blueGrey,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey,
            ),
          ),
          helperText: widget.hintText ?? "",
        ),
        onChanged: (value) => widget.onChanged(value),
      ),
    );
  }
}
