import 'package:flutter/material.dart';
import 'package:julio31/homepage.dart';

void main() {
  runApp(const principal());
}

class principal extends StatelessWidget {
  const principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage(), debugShowCheckedModeBanner: false);
  }
}
