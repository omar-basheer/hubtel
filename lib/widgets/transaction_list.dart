import 'package:flutter/material.dart';

import 'transaction.dart'; // Import TransactionWidget

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example data: List of dates with transactions for each date
    List<Map<String, dynamic>> transactionsByDate = [
      {
        'date': 'July 1, 2024',
        'transactions': ['Transaction 1', 'Transaction 2', 'Transaction 3'],
      },
      {
        'date': 'June 30, 2024',
        'transactions': ['Transaction 4', 'Transaction 5'],
      },
      {
        'date': 'June 30, 2024',
        'transactions': ['Transaction 4', 'Transaction 5'],
      },
      {
        'date': 'June 30, 2024',
        'transactions': ['Transaction 4', 'Transaction 5'],
      },
      {
        'date': 'June 30, 2024',
        'transactions': ['Transaction 4', 'Transaction 5'],
      },
    ];

    return ListView.builder(
      itemCount: transactionsByDate.length,
      itemBuilder: (BuildContext context, int index) {
        String date = transactionsByDate[index]['date'];
        List<String> transactions = List<String>.from(transactionsByDate[index]['transactions']);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                date,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: transactions.length,
              itemBuilder: (BuildContext context, int index) {
                String transaction = transactions[index];
                return TransactionWidget(
                  transactionDetails: transaction,
                );
              },
            ),
            Divider(), 
          ],
        );
      },
    );
  }
}
