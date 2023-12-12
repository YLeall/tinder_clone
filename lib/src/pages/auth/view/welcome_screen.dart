import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/app_icons/icon_tinder.png',
          ),
          const Text(
            'Bem-vindo(a) ao Tinder.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Text(
            'Siga as regras da casa.',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          const Text(
            'Seja você mesmo(a).',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            'Certifique-se de que suas fotos, idade e descrição sejam verdadeiras.',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
