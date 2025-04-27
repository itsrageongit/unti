import 'package:flutter/material.dart';
import 'home/home.dart';
import 'services/services.dart';
import 'student center/studentcenter.dart';
import 'investment/investments.dart';
import 'services/payqr.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(), // 0
    StudentCenter(), // 1
    PayQR(), // 2 (triggered by FAB)
    Investments(), // 3
    Services(), // 4
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        height: 50,
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        notchMargin: 1,
        elevation: 0,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              navIcon(Icons.home, 0), // Home
              navIcon(Icons.lightbulb, 1), // Student Center
              const SizedBox(width: 40), // QR Button Space
              navIcon(Icons.account_balance, 3), // Investments
              navIcon(Icons.dashboard, 4), // Services
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 58,
        width: 58,
        margin: const EdgeInsets.only(top: 4),
        child: FloatingActionButton(
          backgroundColor: Colors.yellow[700],
          elevation: 4,
          onPressed: () => _onItemTapped(2), // QR triggers PayQR
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Icon(Icons.qr_code, color: Colors.black),
        ),
      ),
    );
  }

  Widget navIcon(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        size: 26,
        color: _selectedIndex == index ? Colors.yellow[700] : Colors.grey[600],
      ),
      onPressed: () => _onItemTapped(index),
    );
  }
}
