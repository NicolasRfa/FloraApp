// Apenas widgets estáticos - Stateless Widgets

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indiceSelecionado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Bem-vindo ao meu app!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 179, 168, 197),

        currentIndex: indiceSelecionado,

        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.white,

        iconSize: 50,

        selectedLabelStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),

        onTap: (index) {
          setState(() {
            indiceSelecionado = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Início'),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite), 
            label: 'Favorito'),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
