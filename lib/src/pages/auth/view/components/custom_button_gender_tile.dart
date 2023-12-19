import 'package:flutter/material.dart';
import 'package:tinder_clone/src/models/gender_model.dart';
import 'package:tinder_clone/src/pages/auth/view/components/custom_button_gender_expansion_tile.dart';

class CustomButtonGenderTile extends StatefulWidget {
  const CustomButtonGenderTile({
    super.key,
    required this.title,
    required this.listGender,
  });
  final String title;
  final List<GenderModel> listGender;

  @override
  State<CustomButtonGenderTile> createState() => _CustomButtonGenderTileState();
}

class _CustomButtonGenderTileState extends State<CustomButtonGenderTile> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            debugPrint(widget.title);
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(
              bottom: 12,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    isSelected ? const Color(0xFFFE5048) : Colors.grey.shade600,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                isSelected
                    ? const Icon(
                        Icons.check,
                        color: Color(0xFFFE5048),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
        Visibility(
          visible: isSelected,
          child: Card(
            color: const Color.fromARGB(255, 231, 231, 235),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.only(
              top: 2,
              bottom: 14,
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
                  widget.listGender.length,
                  (index) => CustomButtonGenderExpansionTile(
                    subTitle: widget.listGender[index].subTitle,
                    description: widget.listGender[index].description,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
