import 'package:flutter/material.dart';
import 'package:tinder_clone/src/models/gender_model.dart';
import 'package:tinder_clone/src/pages/auth/view/components/custom_button_gender_expansion_tile.dart';

class GenderTile extends StatelessWidget {
  const GenderTile({
    super.key, required this.listGender,
  });
  final List<GenderModel> listGender;
  // final List<String> teste;
  // final List<String> teste2;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 231, 231, 235),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: ExpansionTile(
          childrenPadding: const EdgeInsets.all(15),
          expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
          title: const Text(
            'Adicione mais informações sobre seu gênero (opcional)',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          children: List.generate(
            listGender.length,
            (index) => CustomButtonGenderExpansionTile(
              subTitle: listGender[index].subTitle,
              description: listGender[index].description,
            ),
          ),
        ),
      ),
    );
  }
}
