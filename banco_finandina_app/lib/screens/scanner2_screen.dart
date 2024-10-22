import 'package:flutter/material.dart';

class Scanner2Screen extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onSkip;

  const Scanner2Screen({
    Key? key,
    required this.onNext,
    required this.onSkip,
    required int currentPage,
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
                Color.fromARGB(255, 205, 52, 237),
                Color.fromARGB(255, 91, 29, 212),
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
                    'assets/images/scanner.png',
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
                      '¡Escanea y listo!',
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
                        'Paga en datáfonos con QR y libérate de las tarjetas físicas.',
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
              // Botón "Libera tu banca"
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 40.0, left: 20.0, right: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Aquí puedes definir la acción del botón
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Color de fondo blanco
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 40.0), // Tamaño del botón
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    'Libera tu banca',
                    style: TextStyle(
                      color: Color.fromARGB(255, 91, 29, 212), // Color morado
                      fontSize: 20.0, // Tamaño de letra más grande
                      fontWeight: FontWeight.bold,
                    ),
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
