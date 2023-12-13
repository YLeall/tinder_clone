import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertBirthdayScreen extends StatelessWidget {
  const InsertBirthdayScreen({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            FocusScope.of(context).unfocus();
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 32,
            color: Colors.black,
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
              "Seu aniversário?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                //hintText: 'Digite seu primeiro nome',
                isDense: true,
                border: InputBorder.none,
              ),
              cursorColor: const Color(0xFFFE5048),
              autofocus: true,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Seu perfil mostra sua idade, não sua data de nascimento.',
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
            const Spacer(),
            CustomButton(
              label: 'Seguinte',
              onPressed: () {},
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
