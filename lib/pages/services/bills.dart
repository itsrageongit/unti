import 'package:flutter/material.dart';
import 'electric.dart';
import 'water.dart';
import 'mobile.dart';
import 'internet.dart';

class Bills extends StatelessWidget {
  const Bills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Bills Payment',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.history, color: Colors.black),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ServiceCard(
            icon: Icons.electric_bolt,
            title: 'Electric bill',
            subtitle: 'Pay electric bill this month',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Electric()),
              );
            },
          ),
          ServiceCard(
            icon: Icons.water_drop,
            title: 'Water bill',
            subtitle: 'Water bill this month',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Water()),
              );
            },
          ),
          ServiceCard(
            icon: Icons.phone_android,
            title: 'Mobile bill',
            subtitle: 'Pay mobile bill this month',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mobile()),
              );
            },
          ),
          ServiceCard(
            icon: Icons.wifi,
            title: 'Internet bill',
            subtitle: 'Pay internet bill this month',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Internet()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap; // <-- Added onTap here

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap, // <-- Required now
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // <-- This makes the whole card clickable
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(0, 0, 0, 0.03),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,
              ),
              child: Icon(icon, size: 28, color: Colors.black),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}
