import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});

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
          'Send Money',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // BIGGER Balance box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'P4,0000.00',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // ACCOUNT NUMBER
            TextField(
              decoration: InputDecoration(
                labelText: 'Account Number',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // ACCOUNT NAME
            TextField(
              decoration: InputDecoration(
                labelText: 'Account Name',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // BANK DROPDOWN
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Bank',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              isExpanded: true, // <<< ADD THIS
              items: const [
                DropdownMenuItem(value: 'UNTi Bank', child: Text('UNTi Bank')),
                DropdownMenuItem(
                  value: 'BDO',
                  child: Text('BDO (Banco de Oro)'),
                ),
                DropdownMenuItem(
                  value: 'BPI',
                  child: Text('BPI (Bank of the Philippine Islands)'),
                ),
                DropdownMenuItem(value: 'Metrobank', child: Text('Metrobank')),
                DropdownMenuItem(value: 'Landbank', child: Text('Landbank')),
                DropdownMenuItem(
                  value: 'PNB',
                  child: Text('Philippine National Bank'),
                ),
                DropdownMenuItem(
                  value: 'Security Bank',
                  child: Text('Security Bank'),
                ),
                DropdownMenuItem(value: 'Chinabank', child: Text('Chinabank')),
                DropdownMenuItem(
                  value: 'RCBC',
                  child: Text('RCBC (Rizal Commercial Banking Corporation)'),
                ),
                DropdownMenuItem(
                  value: 'UnionBank',
                  child: Text('UnionBank of the Philippines'),
                ),
                DropdownMenuItem(
                  value: 'EastWest Bank',
                  child: Text('EastWest Bank'),
                ),
              ],

              onChanged: (value) {},
            ),
            const SizedBox(height: 20),

            // AMOUNT
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 30),

            // CONTINUE BUTTON
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
