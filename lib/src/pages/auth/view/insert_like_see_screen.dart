import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/src/config/app_data.dart';
import 'package:tinder_clone/src/pages/auth/view/components/custom_button_gender.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertLikeSeeScreen extends StatelessWidget {
  const InsertLikeSeeScreen({super.key});
  //CustomButtonLikeSeeTile
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
              "O que você gostaria de ver?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Selecione a opção que te descreve melhor.',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return CustomButtonGender(
                    title: listLikeSee[index],
                    isSelected: false,
                    onTap: () {},
                  );
                },
              ),
            ),
            const CustomButton(
              label: 'Seguinte',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
