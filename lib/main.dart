// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
import 'widgets/top_buttons.dart';
import 'widgets/search.dart';
import 'widgets/transaction_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TopButtons(
              onHistoryPressed: () {
              },
              onSummaryPressed: () {

              },
            ),
            SizedBox(height: 48),
            SearchWidget(),
            Expanded(
              child: TransactionList(),
            )
          ],
        ),
        bottomNavigationBar: Navbar(),
      ),
    );
  }
}
