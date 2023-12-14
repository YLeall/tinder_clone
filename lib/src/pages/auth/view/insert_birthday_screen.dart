import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tinder_clone/src/page_routes/app_pages.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertBirthdayScreen extends StatelessWidget {
  InsertBirthdayScreen({super.key});
  //
  final birthdayFormatter = MaskTextInputFormatter(
    mask: '##/##/####',
    filter: {
      "#": RegExp(r'[0-9]'),
    },
  );
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
              height: 16,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'D D / M M / Y Y Y Y',
                isDense: true,
                border: InputBorder.none,
              ),
              style: const TextStyle(
                fontSize: 18,
              ),
              inputFormatters: [birthdayFormatter],
              cursorColor: const Color(0xFFFE5048),
              autofocus: true,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                //
                RegExp regex = RegExp(r'^\d{2}/\d{2}/\d{4}$');
                bool isFormatValid = regex.hasMatch(value);

                bool isValid = false;
                if (isFormatValid) {
                  List<int> parts = value.split('/').map(int.parse).toList();
                  int day = parts[0];
                  int month = parts[1];
                  int year = parts[2];
                  debugPrint(parts.toString());

                  if (day > 0 && day <= 31 && month > 0 && month <= 12) {
                    DateTime date = DateTime(year, month, day);
                    DateTime today = DateTime.now();
                    if (date.day == day &&
                        date.month == month &&
                        date.year == year) {
                      isValid = true;
                    }
                    int idade = today.year - date.year;
                    if (today.month < date.month) {
                      idade--;
                    } else if (today.month == date.month) {
                      if (today.day < date.day) idade--;
                    }
                    debugPrint(idade.toString());
                  }
                }

                if (isValid) {
                  debugPrint('A data é válida!');
                } else {
                  debugPrint('A data é inválida!');
                }

                // debugPrint('${value}oi');
              },
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
              onPressed: () {
                Get.toNamed(PagesRoutes.insertGenderRoute);
              },
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
