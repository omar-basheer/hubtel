// lib/top_buttons.dart
import 'package:flutter/material.dart';

class TopButtons extends StatelessWidget {
  final VoidCallback onHistoryPressed;
  final VoidCallback onSummaryPressed;

  const TopButtons({
    required this.onHistoryPressed,
    required this.onSummaryPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          onPressed: onHistoryPressed,
          child: Text('History'),
        ),
        ElevatedButton(
          onPressed: onSummaryPressed,
          child: Text('Transaction Summary'),
        ),
      ],
    );
  }
}
