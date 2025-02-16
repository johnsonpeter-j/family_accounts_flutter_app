import 'package:flutter/material.dart';

class ButtonComponent extends StatefulWidget {
  final String labelText;
  final VoidCallback onClicked;
  const ButtonComponent(
      {super.key, required this.labelText, required this.onClicked});

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 3,
        ),
        onPressed: widget.onClicked,
        child: Text(widget.labelText),
      ),
    );
  }
}
