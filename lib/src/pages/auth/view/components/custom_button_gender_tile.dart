import 'package:flutter/material.dart';
import 'package:tinder_clone/src/models/gender_model.dart';
import 'package:tinder_clone/src/pages/auth/view/components/custom_button_gender_expansion_tile.dart';

class CustomButtonGenderTile extends StatefulWidget {
  const CustomButtonGenderTile({
    super.key,
    required this.title,
    required this.listGender,
    required this.isSelected,
    this.onTap,
  });
  final String title;
  final List<GenderModel> listGender;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  State<CustomButtonGenderTile> createState() => _CustomButtonGenderTileState();
}

class _CustomButtonGenderTileState extends State<CustomButtonGenderTile> {
  int selectedIndexGenderTile = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(
              bottom: 12,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: widget.isSelected
                    ? const Color(0xFFFE5048)
                    : Colors.grey.shade600,
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
                widget.isSelected
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
          visible: widget.isSelected,
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
                initiallyExpanded: widget.isSelected,
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
                    onTap: () {
                      setState(() {
                        selectedIndexGenderTile = index;
                      });
                    },
                    isSelectedGenderTile: selectedIndexGenderTile == index,
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
