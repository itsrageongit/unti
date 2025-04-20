import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Top Row with Welcome Text and Bell Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.person, size: 32),
                    SizedBox(width: 10),
                    Text(
                      "WELCOME, JUDE!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.notifications_none),
              ],
            ),

            const SizedBox(height: 20),

            // Card with background image and overlayed info
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/card.png'),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Available Balance',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  const Text(
                    'P4,228.76',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '•••• •••• •••• 8635',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Valid From 10/25',
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                      Text(
                        'Valid Thru 10/30',
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                  const Text(
                    'Card Holder\nJude Tabuzo',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Services section
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Services',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                serviceItem(Icons.credit_card_rounded, "Deposit"),
                serviceItem(Icons.swap_horiz, "Transfer"),
                serviceItem(Icons.handshake_rounded, "Request\nMoney"),
                serviceItem(Icons.receipt_long, "Bills\nPayment"),
              ],
            ),

            const SizedBox(height: 30),

            // Recent Activity section
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Recent Activity',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15),

            activityItem("Transaction 4", "+2,500", Colors.green),
            activityItem("Transaction 3", "-500", Colors.red),
            activityItem("Transaction 2", "-4,200", Colors.red),
            activityItem("Transaction 1", "+2,500", Colors.green),
          ],
        ),
      ),
    );
  }

  Widget serviceItem(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: const BoxDecoration(
            color: Colors.yellow,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 28, color: Colors.black),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget activityItem(String title, String amount, Color amountColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          const CircleAvatar(backgroundColor: Colors.yellow, radius: 12),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                const Text(
                  "3:40 PM",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyle(color: amountColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
