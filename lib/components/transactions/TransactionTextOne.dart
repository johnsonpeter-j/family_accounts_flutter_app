import 'package:flutter/material.dart';

class TransactionTextOne extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  const TransactionTextOne(
      {super.key,
      required this.color,
      required this.label,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(color: color, fontSize: 13),
          ),
          // Text(
          //   ' : ',
          //   style: TextStyle(color: color, fontSize: 13),
          // ),
          Text(
            "\$ $value",
            style: TextStyle(color: color, fontSize: 13),
          )
        ],
      ),
    );
  }
}
