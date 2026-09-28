import 'package:flutter/material.dart';
import 'presentation/pages/inicio_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flora App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF308D68)),
        useMaterial3: true,
      ),
      home: const InicioPage(),
    );
  }
}
/*import 'package:flutter/material.dart';
import 'presentation/pages/materias/m_botanica.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz de Biologia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MBotanica(),
    );
  }
}*/
