import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  final String transactionDetails;

  const TransactionWidget({
    required this.transactionDetails,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(transactionDetails),
      // Customize the ListTile as needed for your transaction details
    );
  }
}
