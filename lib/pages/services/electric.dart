import 'package:flutter/material.dart';

class Electric extends StatelessWidget {
  const Electric({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Electric'), centerTitle: true),
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
