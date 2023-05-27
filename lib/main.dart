import 'package:flutter/material.dart';
import 'package:test_project/main_screens/supplier_home.dart';
import 'package:test_project/main_screens/welcome_screen.dart';

import 'main_screens/customer_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CustomerHomeScreen(),
      // home: SupplierHomeScreen(),
      home: WelcomeScreen(),
    );

  }
}
