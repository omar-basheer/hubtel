import 'package:flutter/material.dart';

import 'transaction.dart'; // Import TransactionWidget

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool _isLoading = true;
    // Example data: List of dates with transactions for each date
    List<Map<String, dynamic>> transactionsByDate = [
      {
        'date': 'April 24, 2022',
        'transactions': [
          {
            'time': '10:00 AM',
            'sender': 'Emmanuel Rockson Kwabena Uncle Ebo',
            'serviceProviderLogo': 'assets/images/provider_logo.png',
            'status': 'Successful',
            'amount': '\$500',
            'telNumber': '024 123 4567',
            'message': 'cool your heart wai',
          },
          {
            'time': '11:30 AM',
            'sender': 'Absa bank',
            'serviceProviderLogo': 'assets/images/provider_logo.png',
            'status': 'Failed',
            'amount': '\$25.00',
            'telNumber': '024 123 4567',
            'message': 'cool your heart wai',
          },
        ],
      },
      {
        'date': 'May 24, 2022',
        'transactions': [
          {
            'time': '10:00 AM',
            'sender': 'Emmanuel Rockson Kwabena Uncle Ebo',
            'serviceProviderLogo': 'assets/images/provider_logo.png',
            'status': 'Successful',
            'amount': '\$500',
            'telNumber': '024 123 4567',
            'message': 'cool your heart wai',
          },
          {
            'time': '11:30 AM',
            'sender': 'Absa bank',
            'serviceProviderLogo': 'assets/images/provider_logo.png',
            'status': 'Failed',
            'amount': '\$25.00',
            'telNumber': '024 123 4567',
            'message': 'cool your heart wai',
          },
        ],
      },
      {
        'date': 'June 24, 2022',
        'transactions': [
          {
            'time': '10:00 AM',
            'sender': 'Emmanuel Rockson Kwabena Uncle Ebo',
            'serviceProviderLogo': 'assets/images/provider_logo.png',
            'status': 'Successful',
            'amount': '\$500',
            'telNumber': '024 123 4567',
            'message': 'cool your heart wai',
          },
          {
            'time': '11:30 AM',
            'sender': 'Absa bank',
            'serviceProviderLogo': 'assets/images/provider_logo.png',
            'status': 'Failed',
            'amount': '\$25.00',
            'telNumber': '024 123 4567',
            'message': 'cool your heart wai',
          },
          {
            'time': '10:00 AM',
            'sender': 'Emmanuel Rockson Kwabena Uncle Ebo',
            'serviceProviderLogo': 'assets/images/provider_logo.png',
            'status': 'Successful',
            'amount': '\$500',
            'telNumber': '024 123 4567',
            'message': 'cool your heart wai',
          },
        ],
      },

      // Add more dates and transactions as needed
    ];

    return ListView.builder(
      itemCount: transactionsByDate.length,
      itemBuilder: (BuildContext context, int index) {
        String date = transactionsByDate[index]['date'];
        List<Map<String, dynamic>> transactions =
            List<Map<String, dynamic>>.from(transactionsByDate[index]['transactions']);

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
                Map<String, dynamic> transaction = transactions[index];
                return TransactionWidget(
                  time: transaction['time'],
                  sender: transaction['sender'],
                  serviceProviderLogo: transaction['serviceProviderLogo'],
                  status: transaction['status'],
                  amount: transaction['amount'],
                  telNumber: transaction['telNumber'],
                  message: transaction['message'],
                );
              },
            ),
            Divider(), // Divider between date sections
          ],
        );
      },
    );
  }
}
