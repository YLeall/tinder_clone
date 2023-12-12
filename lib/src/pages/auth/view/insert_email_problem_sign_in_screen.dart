import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/src/pages/auth/controller/auth_controller.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertEmailProblemSignInScreen extends StatelessWidget {
  InsertEmailProblemSignInScreen({super.key});

  final authController = Get.find<AuthController>();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 5,
          right: 28,
          left: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Entrar via e-mail',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Seu e-mail é',
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 3.0),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFE5048),
                    width: 2,
                  ),
                ),
              ),
              onChanged: (value) {
                if (!value.isEmail) {
                  authController.isEmailValidate.value = false;
                  authController.isEmailValidateButton.value = false;
                }

                if (value.isEmpty) {
                  authController.isEmailValidate.value = true;
                }

                if (value.isEmail) {
                  authController.isEmailValidate.value = true;
                  authController.isEmailValidateButton.value = true;
                }

                debugPrint(value);
              },
              cursorColor: const Color(0xFFFE5048),
              autofocus: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Obx(
              () => authController.isEmailValidate.value
                  ? Text(
                      'Enviaremos um link por e-mail que permitirá o login instantâneo',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    )
                  : const Text(
                      'Insira um endereço de e-mail válido',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
            ),
            const SizedBox(
              height: 45,
            ),
            Obx(
              () => CustomButton(
                label: 'Enviar e-mail',
                onPressed:
                    authController.isEmailValidateButton.value ? () {} : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
