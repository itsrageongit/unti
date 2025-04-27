import 'package:flutter/material.dart';

class Deposit extends StatefulWidget {
  const Deposit({Key? key}) : super(key: key);

  @override
  State<Deposit> createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  String _amountText = '';
  String? _errorMessage;

  void _onNumberPressed(String number) {
    // Limit to 6 digits only
    if (_amountText.length < 6) {
      setState(() {
        _amountText += number;
        _errorMessage = null; // Reset error message
      });
    } else {
      // Show error message if more than 6 digits are entered
      setState(() {
        _errorMessage = "Amount too large";
      });
    }
  }

  void _onBackspacePressed() {
    setState(() {
      if (_amountText.isNotEmpty) {
        _amountText = _amountText.substring(0, _amountText.length - 1);
        _errorMessage = null; // Reset error message when backspace is pressed
      }
    });
  }

  String get _formattedAmount {
    if (_amountText.isEmpty) return '0.00';
    double value = double.tryParse(_amountText) ?? 0;
    return value.toStringAsFixed(2);
  }

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
        centerTitle: true,
        title: const Text(
          'Deposit',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Expanded(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // <--- Push content to center
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'P',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        _formattedAmount,
                        style: const TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Amount',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  if (_errorMessage != null)
                    Text(
                      _errorMessage!,
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  const SizedBox(height: 30),
                  // Make the keypad take less space by wrapping it in a Flexible
                  Flexible(
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 12,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1.2,
                          ),
                      itemBuilder: (context, index) {
                        if (index == 9) {
                          return const SizedBox.shrink();
                        } else if (index == 11) {
                          return IconButton(
                            icon: const Icon(Icons.backspace, size: 28),
                            onPressed: _onBackspacePressed,
                          );
                        } else {
                          String number = (index == 10) ? '0' : '${index + 1}';
                          return TextButton(
                            onPressed: () => _onNumberPressed(number),
                            style: TextButton.styleFrom(
                              shape: const CircleBorder(),
                            ),
                            child: Text(
                              number,
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Make the Pay button higher by adjusting padding and positioning
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 30,
              ), // Increased top padding
              child: ElevatedButton(
                onPressed: () {
                  // Pay action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                  shadowColor: Colors.black.withOpacity(0.3),
                ),
                child: const Text(
                  'Pay',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 120), // Small bottom padding
          ],
        ),
      ),
    );
  }
}
