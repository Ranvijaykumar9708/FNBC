import 'package:banking_app/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FNBC());
}

class FNBC extends StatelessWidget {
  const FNBC({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_screen()
    );
  }
}
