import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page.dart';

void main() => runApp(const MyPortfolio());

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rafsan Bin Firoz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
