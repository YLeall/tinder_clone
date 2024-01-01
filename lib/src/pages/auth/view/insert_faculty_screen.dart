import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/src/page_routes/app_pages.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertFacultyScreen extends StatelessWidget {
  const InsertFacultyScreen({super.key});

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
        surfaceTintColor: Colors.transparent,
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed(PagesRoutes.insertHabits);
            },
            child: Container(
              margin: const EdgeInsets.only(
                right: 12,
              ),
              child: Text(
                'Pular',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Você tá na faculdade?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Insira o nome da sua faculdade, atual ou',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        iconSize: 20,
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        icon: const Icon(
                          Icons.close_rounded,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF828693),
                          width: 1,
                        ),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.only(
                        top: 20,
                      ),
                    ),
                    readOnly: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'É assim que vai aparecer no seu perfil.',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
            const Spacer(),
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
