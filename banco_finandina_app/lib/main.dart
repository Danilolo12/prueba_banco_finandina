// lib/main.dart
import 'package:banco_finandina_app/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const FinandinaApp());
}

class FinandinaApp extends StatelessWidget {
  const FinandinaApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Configura la barra de estado para que sea transparente
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return MaterialApp(
      title: 'Banco Finandina',
      debugShowCheckedModeBanner: false, // Quita el banner de debug
      theme: ThemeData(
        primarySwatch: Colors.pink,
        // Configura el color primario para que coincida con el gradiente
        primaryColor: const Color(0xFFE91E63),
        // Asegura que los textos sobre fondos oscuros sean legibles
        brightness: Brightness.light,
        // Configura el tema de los textos
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
      home: const OnboardingController(),
    );
  }
}
