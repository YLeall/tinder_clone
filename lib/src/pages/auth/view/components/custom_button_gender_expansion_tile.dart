import 'package:flutter/material.dart';

class CustomButtonGenderExpansionTile extends StatelessWidget {
  CustomButtonGenderExpansionTile({
    super.key,
    required this.subTitle,
    required this.description,
  });
  final String subTitle;
  final String description;

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint(subTitle);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(
          bottom: 8,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isSelected ? const Color(0xFFFE5048) : Colors.grey.shade600,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
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
            const SizedBox(
              height: 5,
            ),
            Text(
              description,
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
