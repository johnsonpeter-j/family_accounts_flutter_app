import 'package:flutter/material.dart';

class CheckBoxComponent extends StatefulWidget {
  final bool isChecked;
  final String forText;
  const CheckBoxComponent(
      {super.key, required this.isChecked, required this.forText});

  @override
  State<CheckBoxComponent> createState() => _CheckBoxComponentState();
}

class _CheckBoxComponentState extends State<CheckBoxComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          tristate: true,
          value: widget.isChecked,
          onChanged: (bool? value) {},
        ),
        Text(widget.forText)
      ],
    );
  }
}
