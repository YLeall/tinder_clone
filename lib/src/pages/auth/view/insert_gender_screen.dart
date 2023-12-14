import 'package:flutter/material.dart';

class InsertGenderScreen extends StatelessWidget {
  InsertGenderScreen({super.key});
  
  final List<String> listTitleGender = [
    'Homem cis',
    'Homem intersexual',
    'Homem trans',
    'Transmasculine',
    'Não listado',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Qual é o seu gênero?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Selecione a opção que melhor te descreve.',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade600,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Homem',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Visibility(
                        visible: true,
                        child: Icon(
                          Icons.check,
                          color: Color(0xFFFE5048),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Card(
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
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey.shade600,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Homem cis',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Um homem cujo gênero está alinhado ao que recebeu ao nascimento.',
                              style: TextStyle(
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
