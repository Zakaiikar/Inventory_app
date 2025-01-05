import 'package:flutter/material.dart';
import 'package:inventory_management_app/Pages/onboard.dart';




// Ensure this matches your file structure

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Onboard()
      // Use your BottomNav widget here
    );
  }
}
