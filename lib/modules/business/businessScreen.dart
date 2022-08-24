import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Business Screen',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),
        ),
      ),
    );
  }
}
