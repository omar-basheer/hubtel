import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  final String time;
  final String sender;
  final String serviceProviderLogo;
  final String status;
  final String amount;
  final String telNumber;
  final String message;

  const TransactionWidget({
    required this.time,
    required this.sender,
    required this.serviceProviderLogo,
    required this.status,
    required this.amount,
    required this.telNumber,
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(serviceProviderLogo),
      ),
      title: Text(sender),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Time: $time'),
          Text('Status: $status'),
          Text('Amount: $amount'),
          Text('Tel Number: $telNumber'),
          Text('Message: $message'),
        ],
      ),
    );
  }
}
