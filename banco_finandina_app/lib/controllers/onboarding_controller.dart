import 'package:banco_finandina_app/screens/bank_screen.dart';
import 'package:banco_finandina_app/screens/money_screen.dart';
import 'package:banco_finandina_app/screens/page_screen.dart';
import 'package:banco_finandina_app/screens/scanner2_screen.dart';
import 'package:banco_finandina_app/screens/scanner_screen.dart';
import 'package:flutter/material.dart';
import '../screens/intro_screen.dart';
import '../screens/product_screen.dart';

class OnboardingController extends StatefulWidget {
  const OnboardingController({Key? key}) : super(key: key);

  @override
  State<OnboardingController> createState() => _OnboardingControllerState();
}

class _OnboardingControllerState extends State<OnboardingController> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _goToNextPage() {
    if (_currentPage < 6) {
      // Cambiado a 6 para las 7 páginas (0-6)
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Aquí puedes navegar a la pantalla principal después del onboarding
      // Navigator.pushReplacement(context, ...);
    }
  }

  void _skipOnboarding() {
    // Navegar a la pantalla principal
    // Navigator.pushReplacement(context, ...);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: [
          IntroScreen(
            onNext: _goToNextPage,
            onSkip: _skipOnboarding,
            currentPage: _currentPage, // Pasar el índice
          ),
          ProductScreen(
            onNext: _goToNextPage,
            onSkip: _skipOnboarding,
            currentPage: _currentPage, // También aquí si necesitas
          ),
          PageScreen(
            onNext: _goToNextPage,
            onSkip: _skipOnboarding,
            currentPage: _currentPage,
          ),
          MoneyScreen(
            onNext: _goToNextPage,
            onSkip: _skipOnboarding,
            currentPage: _currentPage,
          ),
          BankScreen(
            // Cambiado de BanckScreen a BankScreen
            onNext: _goToNextPage,
            onSkip: _skipOnboarding,
            currentPage: _currentPage, // Pasar el índice
          ),
          ScannerScreen(
            onNext: _goToNextPage,
            onSkip: _skipOnboarding,
            currentPage: _currentPage,
          ),
          Scanner2Screen(
            onNext: _goToNextPage,
            onSkip: _skipOnboarding,
            currentPage: _currentPage,
          ),
        ],
      ),
      // ... resto del código ...
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
