import 'package:flutter/material.dart';
import 'materias/m_botanica.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  static const _subjects = <(String, String, IconData)>[
    ('BOTÂNICA', 'assets/image/botanica.png', Icons.spa),
    ('MICROBIOLOGIA', 'assets/image/microbiologia.png', Icons.biotech),
    ('GENÉTICA', 'assets/image/genetica.png', Icons.device_hub),
    ('CITOLOGIA', 'assets/image/citologia.png', Icons.bubble_chart),
    ('ZOOLOGIA', 'assets/image/zoologia.png', Icons.pets),
    ('CORPO HUMANO', 'assets/image/corpo_humano.png', Icons.favorite),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha uma matéria'),
        backgroundColor: const Color(0xFF85CC8D),
        foregroundColor: Colors.white,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/image/menu.png', fit: BoxFit.fill),
          ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 350, 16, 24),
            itemCount: _subjects.length,
            itemBuilder: (context, index) {
              final (name, image, icon) = _subjects[index];
              return Card(
                color: const Color(0xFF308D68),
                margin: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(image),
                    child: Icon(icon, color: const Color(0xFF308D68), size: 0),
                  ),
                  title: Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const MBotanica()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Este conteúdo estará disponível em breve.')),
                      );
                    }
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
