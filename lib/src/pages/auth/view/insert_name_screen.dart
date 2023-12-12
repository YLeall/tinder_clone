import 'package:flutter/material.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertNameScreen extends StatelessWidget {
  const InsertNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            "Meu primeiro nome é",
          ),
          TextFormField(),
          const Text(
            'sffdf',
          ),
          const CustomButton(
            label: 'Continuar',
          ),
        ],
      ),
    );
  }
}
