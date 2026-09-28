import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

//Classe Estática para armazenar os estilos de texto do aplicativo
class TextStyles {
  // Estilo para títulos grandes
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.secondary,
  );

  // Estilo para títulos médios
  static const TextStyle headlineMedium = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.secondary,
  );

  // Estilo para textos comuns
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 14,
    color: AppColors.textPrimary,
  );

  // Estilo para títulos no AppBar
  static const TextStyle appBarTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.background,
  );

  // Estilo para botões
  static const TextStyle button = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.background,
  );

  // Estilo para textos de erro
  static const TextStyle error = TextStyle(
    fontSize: 14,
    color: AppColors.error,
  );

  // Estilo manual novo
  static const TextStyle fontManual = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle get googleFonts{
    return GoogleFonts.pinyonScript(
      textStyle: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      )
      );
  }
}