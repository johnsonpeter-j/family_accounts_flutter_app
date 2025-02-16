import 'package:flutter/material.dart';

class FormFieldComponent extends StatefulWidget {
  final String title;
  final String placeholderText;
  final String errorText;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const FormFieldComponent({
    super.key,
    required this.title,
    required this.placeholderText,
    required this.errorText,
    required this.controller,
    required this.keyboardType,
  });

  @override
  State<FormFieldComponent> createState() => _FormFieldComponentState();
}

class _FormFieldComponentState extends State<FormFieldComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 30,
          child: TextField(
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10,
              ),
              border: OutlineInputBorder(),
              hintStyle: TextStyle(fontSize: 12),
              hintText: widget.placeholderText,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              widget.errorText,
              style: const TextStyle(
                fontSize: 13.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
