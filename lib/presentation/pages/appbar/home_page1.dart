import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 91, 97, 48),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 73, 55, 202),
        title: const Text(
          'MEU APP',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          "Olá Mundo!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
