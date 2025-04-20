import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // <-- Required for SystemUiOverlayStyle
import 'package:unti/pages/login.dart';
import 'package:unti/pages/investment/investments.dart';
import 'package:unti/pages/student%20center/studentcenter.dart';
import 'package:unti/pages/services/services.dart';
import 'package:unti/pages/home/home.dart';
import 'package:unti/pages/mainnav.dart';
import 'package:unti/pages/services/payqr.dart';

void main() {
  // Set the status bar icons to black (for light backgrounds)
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => Home(),
        '/investments': (context) => Investments(),
        '/studentcenter': (context) => StudentCenter(),
        '/services': (context) => Services(),
        '/mainnav': (context) => MainNav(),
        '/payqr': (context) => Payqr(),
      },
    );
  }
}
