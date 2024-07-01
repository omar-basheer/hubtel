import 'package:flutter/material.dart';
import 'package:hubtel_app/widgets/navbar.dart';
import 'widgets/navbar.dart'; // Import the Navbar widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: 375.0,
            height: 667.0,
            color: Colors.white,
            child: Center(
                // Use the Navbar widget here
                ),
          ),
        ),
        bottomNavigationBar: Navbar(),
      ),
    );
  }
}
