import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/src/page_routes/app_pages.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertNameScreen extends StatelessWidget {
  const InsertNameScreen({super.key});

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
              "Qual é o seu nome?",
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
                hintText: 'Digite seu primeiro nome',
                isDense: true,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                ),
              ),
              cursorColor: const Color(0xFFFE5048),
              autofocus: true,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'É assim que vai aparecer no seu perfil.',
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
            Text(
              'Não é possivel alterar isso mais tarde.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700,
              ),
            ),
            const Spacer(),
            CustomButton(
              label: 'Seguinte',
              onPressed: () {
                _showDialog(context: context);
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
          padding: const EdgeInsets.all(15.0),
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
                'Que bom te ver por aqui, {nome da pessoa}!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Tem muita gente pra você conhecer.',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              Text(
                'Mas vamos configurar seu perfil primeiro.',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                width: 200,
                child: CustomButton(
                  label: 'Bora lá',
                  onPressed: () {
                    Get.toNamed(PagesRoutes.insertBirthdayRoute);
                  },
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Editar nome',
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
