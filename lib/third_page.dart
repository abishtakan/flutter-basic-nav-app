import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final String message;
  ThirdPage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
