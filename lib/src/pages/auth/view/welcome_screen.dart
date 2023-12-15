import 'package:flutter/material.dart';
import 'package:tinder_clone/src/page_routes/app_pages.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _showDialog(context: context);
          },
          icon: const Icon(
            Icons.close_rounded,
            size: 40,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 15,
          left: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: Image.asset(
                  'assets/app_icons/icon_tinder.png',
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Bem-vindo(a) ao Tinder.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Siga as regras da casa.',
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                children: [
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
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Proteja-se.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      style: const TextStyle(
                        color: Color(0xFF828693),
                      ),
                      children: [
                        const TextSpan(
                          text: 'Não dê informações pessoais logo de cara. ',
                        ),
                        TextSpan(
                          text: 'Dicas de segurança',
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
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Seja legal.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Respeite os outros e os trate como você gostaria de ser tratado(a).',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Seja pró-ativo(a).',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Sempre denuncie mau comportamento.',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            // const Spacer(),
            CustomButton(
              label: 'Eu aceito',
              onPressed: () {
                Get.toNamed(PagesRoutes.insertNameRoute);
              },
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

Future<bool?> _showDialog({
  required BuildContext context,
}) async {
  return await showAdaptiveDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset(
                  'assets/app_icons/icon_tinder.png',
                ),
              ),
              const Text(
                'Não precisa acabar assim',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Tem certeza de que deseja sair?',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              Text(
                'Você perderá as alterações que fez.',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                width: 200,
                child: CustomButton(
                  label: 'Ficar',
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextButton(
                onPressed: () {
                  Get.offAllNamed(PagesRoutes.signInRoute);
                },
                child: Text(
                  'Sair',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
            ],
          ),
        ),
      );
    },
  );
}
