import 'package:flutter/material.dart';
import 'package:sanchi_multishop_app/main_screens/customer_home.dart';
import 'package:sanchi_multishop_app/main_screens/supplier_home.dart';
import 'package:sanchi_multishop_app/main_screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/customer_home',
      routes: {
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/customer_home': (context) => const CustomerHomeScreen(),
        '/supplier_home': (context) => const SupplierHomeScreen(),
      },
    );
  }
}
