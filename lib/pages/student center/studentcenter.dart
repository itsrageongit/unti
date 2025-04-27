import 'package:flutter/material.dart';

class StudentCenter extends StatelessWidget {
  const StudentCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Center'), centerTitle: true),
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
