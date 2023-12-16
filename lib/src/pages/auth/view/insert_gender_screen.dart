import 'package:flutter/material.dart';
import 'package:tinder_clone/src/config/app_data.dart';
import 'package:tinder_clone/src/pages/auth/view/components/custom_button_gender.dart';
import 'package:tinder_clone/src/pages/auth/view/components/gender_tile.dart';

class InsertGenderScreen extends StatelessWidget {
  const InsertGenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Qual é o seu gênero?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Selecione a opção que melhor te descreve.',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView(
                  children: [
                    const CustomButtonGender(title: 'Homem'),
                    const SizedBox(
                      height: 12,
                    ),
                    GenderTile(
                      listGender: listGenderHomem,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const CustomButtonGender(title: 'Mulher'),
                    const SizedBox(
                      height: 12,
                    ),
                    const CustomButtonGender(title: 'Além de binário'),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
