import 'package:flutter/material.dart';

class ScienceScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Science Screen',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),
        ),
      ),
    );
  }
}
