import 'package:flutter/material.dart';

class PayQR extends StatelessWidget {
  const PayQR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PayQR'), centerTitle: true),
      body: const Center(
        child: Text(
          'Under Development',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
