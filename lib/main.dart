import 'package:flutter/material.dart';
import 'screens/menu_screen.dart';

void main() {
  runApp(const Calqiva());
}

class Calqiva extends StatelessWidget {
  const Calqiva({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,

      home : MenuScreen(),
    );
  }
}