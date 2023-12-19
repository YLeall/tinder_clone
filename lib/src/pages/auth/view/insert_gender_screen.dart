import 'package:flutter/material.dart';
import 'package:tinder_clone/src/config/app_data.dart';
import 'package:tinder_clone/src/pages/auth/view/components/custom_button_gender_tile.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

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
                child: ListView.builder(
                  itemCount: listTitleGender.length,
                  itemBuilder: (context, index) {
                    return CustomButtonGenderTile(
                      title: listTitleGender[index],
                      listGender: listGenderModels[index],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Saiba por que o Tinder pede essas informações.',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Mostrar gênero no perfil',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    CustomButton(
                      label: 'Seguinte',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
