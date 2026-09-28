import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 12, 12),
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
        centerTitle: true,
        leading: const Icon(
          Icons.account_circle_rounded,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
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