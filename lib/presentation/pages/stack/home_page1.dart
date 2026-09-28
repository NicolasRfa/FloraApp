// Apenas widgets estáticos - Stateless Widgets

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 144, 201),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 55, 25, 107),
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
            const UserAccountsDrawerHeader(
              // Com o useraccount não usa child, usa account
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 136, 115, 212)
                ),
                accountName: Text('Mariane De Sousa'),
                accountEmail: Text('mari124@gmail.com'),
                // Bolinha com sigla do nome
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text(
                    'M.S',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
            ),
            // Inserção da lista de funcionalidades do drawer 
            ListTile(
              // Tem como mudar a cor do icone e da escrita
              leading: const Icon(Icons.person),
              title: const Text('Minha conta'), 
              onTap: (){},),
            ListTile( 
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Meus pedidos'), 
              onTap: (){},),
            ListTile( 
              leading: const Icon(Icons.favorite),
              title: const Text('Favoritos'), 
              onTap: (){},),
              // outro tipo de cabeçalho
          ],
        ),
      ),
      body: Stack(
        // Trabalha com vários widget - por isso usa children
        // para ver o uso do stack, vai usar 3 containers pra ver o empilhamento
        children: [
          Container(
            color: Colors.pink,
            width: 300,
            height: 300,
          ),
          Container(
            color: Colors.green,
            width: 270,
            height: 270,
          ),
          Container(
            color: Colors.cyan,
            width: 250,
            height: 250,
          ),
        ],
      ),
    );
  }
}
