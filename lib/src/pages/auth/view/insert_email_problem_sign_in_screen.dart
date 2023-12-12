import 'package:flutter/material.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertEmailProblemSignInScreen extends StatelessWidget {
  const InsertEmailProblemSignInScreen({super.key});

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
            const TextField(
              decoration: InputDecoration(
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
              cursorColor: Color(0xFFFE5048),
              autofocus: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Enviaremos um link por e-mail que permitirá o login instantâneo.',
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            CustomButton(
              label: 'Enviar e-mail',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
