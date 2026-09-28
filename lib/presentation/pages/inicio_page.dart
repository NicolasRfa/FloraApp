import 'package:flutter/material.dart';
import 'menu_page.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/image/inicio.png', fit: BoxFit.fill),
          Align(
            alignment: const Alignment(0, 0.40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF308D68),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MenuPage()),
              ),
              child: const Text('Entrar'),
            ),
          ),
        ],
      ),
    );
  }
}
