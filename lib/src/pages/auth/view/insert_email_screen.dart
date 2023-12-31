import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/src/page_routes/app_pages.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertEmailScreen extends StatelessWidget {
  const InsertEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.offAllNamed(PagesRoutes.signInRoute);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 24,
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Qual é o seu e-mail?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Verifique seu e-mail para não perder o acesso á sua conta.',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Inserir e-mail',
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 3.0),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF828693),
                        width: 2,
                      ),
                    ),
                  ),
                  cursorColor: Color(0xFFFE5048),
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomButton(
                  label: 'Continuar',
                  onPressed: () {
                    Get.toNamed(PagesRoutes.welcomeRoute);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'OU',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      debugPrint("Apertei");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      elevation: MaterialStateProperty.all<double>(0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/app_icons/icon_google.png',
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'ENTRAR COM O GOOGLE',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Faça a verificação instantânea conectando sua conta do Google',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
