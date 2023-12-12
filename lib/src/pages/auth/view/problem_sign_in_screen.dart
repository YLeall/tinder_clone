import 'package:flutter/material.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class ProblemSignInScreen extends StatelessWidget {
  const ProblemSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 27,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Recuperação de conta',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Mudou seu número de telefone ou perdeu acesso á sua conta do facebook? Podemos ajudá-lo a entrar com o seu e-mail',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF828693),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 55,
            ),
            CustomButton(
              label: 'Entrar com e-mail',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
