// Apenas widgets estáticos - Stateless Widgets

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
            ),
            ),
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
      ),
      drawer: Drawer(
        // O drawer só pode ter 1 filho
        child: ListView(
          // O list view pode ter vários filhos
          // Zerar o padding oara não ter espaço em nenhum lugar
          padding: EdgeInsets.zero,
          children: [
            // Cabeçalho do drawer
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),

              child: Text('Home'),
            ),
            // Inserção da lista de funcionalidades do drawer 
            ListTile(title: const Text('Minha conta'), onTap: (){},),
            ListTile( title: const Text('Meus pedidos'), onTap: (){},),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo ao meu app!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
