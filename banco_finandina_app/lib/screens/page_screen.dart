import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final int currentPage;

  const PageScreen({
    Key? key,
    required this.onNext,
    required this.onSkip,
    required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 241, 115, 57),
                Color.fromARGB(255, 194, 39, 11),
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              // Logo superior
              Image.asset(
                'assets/images/logo.png',
                height: 50.0,
              ),
              // Imagen central del teléfono y tarjeta
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Image.asset(
                    'assets/images/page.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Textos inferiores
              const Padding(
                padding: EdgeInsets.only(bottom: 40.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Paga libremente',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text(
                        'Puedes pagar tus productos, recibos y facturas en cualquier momento y lugar.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Barra de navegación inferior
              Container(
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                        onPressed: onSkip,
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                        ),
                        child: const Text(
                          'Saltar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Row(
                        children: List.generate(
                          6,
                          (index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(
                                    index == currentPage
                                        ? 1
                                        : 0.5), // Cambiar según el índice
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          iconSize: 18,
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(
                            minWidth: 30,
                            minHeight: 30,
                          ),
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFE91E63),
                          ),
                          onPressed: onNext,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
