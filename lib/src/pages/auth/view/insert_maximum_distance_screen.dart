import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertMaximumDistance extends StatelessWidget {
  const InsertMaximumDistance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 35,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Distância máxima?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Use o controle deslizante para definir a distância máxima dos seus matches e potencial.',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Preferência de distância',
                        ),
                        Text(
                          'km',
                        ),
                      ],
                    ),
                    Slider(
                      value: 0,
                      onChanged: (value) {},
                      activeColor: const Color(0xFFFE5048),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Text(
                'Você pode alterar as preferências mais tarde nas Configurações',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              label: 'Seguinte',
              onPressed: () {},
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
