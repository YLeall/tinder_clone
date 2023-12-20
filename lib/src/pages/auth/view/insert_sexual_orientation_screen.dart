import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/src/config/app_data.dart';
import 'package:tinder_clone/src/page_routes/app_pages.dart';
import 'package:tinder_clone/src/pages/auth/view/components/custom_button_gender_expansion_tile.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertSexualOrientationScreen extends StatefulWidget {
  const InsertSexualOrientationScreen({super.key});

  @override
  State<InsertSexualOrientationScreen> createState() =>
      _InsertSexualOrientationScreenState();
}

class _InsertSexualOrientationScreenState
    extends State<InsertSexualOrientationScreen> {
  bool isSelectedRadioButton = false;
  Set<String> selectedOptions = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 35,
          ),
        ),
        surfaceTintColor: Colors.transparent,
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed(PagesRoutes.insertLikeSee);
            },
            child: Container(
              margin: const EdgeInsets.only(
                right: 12,
              ),
              child: Text(
                'Pular',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Qual a sua orientação sexual?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Selecione até 3 que melhor te descrevam.',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: listGenderSexualOrientation.length,
                itemBuilder: (context, index) {
                  return CustomButtonGenderExpansionTile(
                    subTitle: listGenderSexualOrientation[index].subTitle,
                    description: listGenderSexualOrientation[index].description,
                    marginBottom: 16,
                    isSelectedGenderTile: selectedOptions
                        .contains(listGenderSexualOrientation[index].subTitle),
                    onTap: () {
                      if (selectedOptions.contains(
                          listGenderSexualOrientation[index].subTitle)) {
                        setState(() {
                          selectedOptions.remove(
                              listGenderSexualOrientation[index].subTitle);
                        });
                      } else if (selectedOptions.length < 3) {
                        setState(
                          () {
                            selectedOptions.add(
                                listGenderSexualOrientation[index].subTitle);
                          },
                        );
                      } else {
                        _showDialog(context);
                      }
                    },
                  );
                },
              ),
            ),
            IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: isSelectedRadioButton,
                        onChanged: (value) {
                          setState(() {
                            isSelectedRadioButton = value ?? false;
                          });
                        },
                        activeColor: const Color(0xFFFE5048),
                      ),
                      Text(
                        'Mostrar orientação sexual no perfil',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                  CustomButton(
                    label: 'Seguinte',
                    onPressed: () {
                      Get.toNamed(PagesRoutes.insertLikeSee);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

Future<bool?> _showDialog(
  BuildContext context,
) async {
  return showAdaptiveDialog(
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Número máximo de seleções atingido',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Você atingiu o número máximo de seleções. Para adicionar mais, remova algumas de sua lista.',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 22,
              ),
              CustomButton(
                label: 'Ok',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      );
    },
  );
}
