// Exercicio 1 do dia 01/09

// Apenas widgets estáticos - Stateless Widgets

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 165, 213, 245),
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
      body: Center(
        child: Container(
        width: 310,
        height: 310,
        color: Colors.yellow,
        decoration: BoxDecoration(
          border: Border.all(
            width: 8,
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        //Tira a margem branca porque é o scaffold, tudo que está em vermelhro é o container, 
        // utilizzado para definir Layouts
        margin: const EdgeInsets.all(20),
        child: const Center(
          child: Text(
            'Olá Mundo!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
    );
  }
}
