import 'package:flutter/material.dart';
import 'deposit.dart';
import 'transfer.dart';
import 'payqr.dart';
import 'bills.dart';

class Services extends StatelessWidget {
  const Services({super.key});

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
          'Services',
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
            icon: Icons.credit_card_rounded,
            title: 'Deposit',
            subtitle: 'Deposit money to your account',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Deposit()),
              );
            },
          ),
          ServiceCard(
            icon: Icons.swap_horiz,
            title: 'Transfer',
            subtitle: 'Transfer to UNTi and other banks',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Transfer()),
              );
            },
          ),
          ServiceCard(
            icon: Icons.handshake_rounded,
            title: 'Request Money',
            subtitle: 'Request money via QR',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PayQR()),
              );
            },
          ),
          ServiceCard(
            icon: Icons.receipt_long,
            title: 'Bills Payment',
            subtitle: 'Pay utility bills',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Bills()),
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
