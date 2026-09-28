import 'package:flutter/material.dart';
import 'package:projetoaula/core/theme/colors.dart';
import 'package:projetoaula/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorScaffold,
      appBar: AppBar(
        backgroundColor: AppColors.colorAppbar,
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
        child: Text('Olá, espero que esteja bem!', style: TextStyles.bodyLarge),
      ),
    );
  }
}