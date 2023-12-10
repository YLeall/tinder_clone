import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/src/page_routes/app_pages.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class AuthNumberScreen extends StatelessWidget {
  const AuthNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          right: 24,
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Meu número é',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 8,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFF828693),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'BR +55',
                        style: TextStyle(
                          color: Color(0xFF444142),
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Número de telefone',
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 3.0),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF828693),
                          width: 2,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    keyboardType: TextInputType.phone,
                    cursorColor: Color(0xFFFE5048),
                    autofocus: true,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    color: Color(0xFF828693),
                  ),
                  children: [
                    const TextSpan(
                      text:
                          'Quando você tocar em Continuar, o Tinder Ihe enviará uma mensagem de texto com o código de verificação. Tarifas de mensagens e dados podem ser aplicáveis. O número de telefone confirmado pode ser utilizado para entrar no Tinder. ',
                    ),
                    TextSpan(
                      text: 'Saiba o que acontece se seu número mudar.',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue.shade300,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            CustomButton(
              label: 'Continuar',
              onPressed: () {
                Get.toNamed(PagesRoutes.authNumberOtpRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
