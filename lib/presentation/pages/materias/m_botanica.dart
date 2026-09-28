import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../quiz/quiz_page.dart';

class MBotanica extends StatelessWidget {
  const MBotanica({super.key});

  // Função para abrir o Google
  Future<void> abrirGoogle() async {
    final url = Uri.parse('https://www.google.com/search?q=bot%C3%A2nica+material+de+estudo');
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(150, 186, 255, 189),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 49, 25),

        title: const Text('BOTÂNICA', style: TextStyle(color: Colors.white)),

        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 84, 170, 173),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/botanica.png'),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ==================================================
              // CONTAINER ACESSAR MATERIAL
              // ==================================================

              Container(
                width: 320,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.85),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [
                    const Icon(
                      Icons.menu_book,
                      size: 50,
                      color: Color.fromARGB(255, 28, 77, 40),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'ACESSAR MATERIAL',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 15, 82, 20),
                      ),
                    ),

                    const SizedBox(height: 10),

                    ElevatedButton.icon(
                      onPressed: abrirGoogle,

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          116,
                          184,
                          139,
                        ),
                      ),

                      icon: const Icon(Icons.open_in_new, color: Colors.white),

                      label: const Text(
                        'Abrir material',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // ==================================================
              // CONTAINER QUIZ
              // ==================================================
              Container(
                width: 320,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.85),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [
                    const Icon(
                      Icons.quiz,
                      size: 50,
                      color: Color.fromARGB(255, 28, 77, 40),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'QUIZ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 15, 82, 20),
                      ),
                    ),

                    const SizedBox(height: 10),

                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizPage(),
                          ),
                        );
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          116,
                          184,
                          139,
                        ),
                      ),

                      icon: const Icon(Icons.play_arrow, color: Colors.white),

                      label: const Text(
                        'Começar Quiz',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // ==================================================
              // BOTÃO VOLTAR
              // ==================================================
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 23, 61, 25),
                ),

                icon: const Icon(Icons.arrow_back, color: Colors.white),

                label: const Text(
                  'Voltar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
