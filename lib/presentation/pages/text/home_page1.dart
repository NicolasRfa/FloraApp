import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'MEU APP',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Olá, espero que esteja bem!',
          style: TextStyle(
            color: Colors.green,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            letterSpacing: 10,
            wordSpacing: 20,
          ),
        ),
      ),
    );
  }
}