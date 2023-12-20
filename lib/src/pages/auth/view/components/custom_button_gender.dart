import 'package:flutter/material.dart';

class CustomButtonGender extends StatelessWidget {
  const CustomButtonGender({
    super.key,
    required this.title,
    required this.isSelected,
    this.onTap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(
          bottom: 12,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? const Color(0xFFFE5048) : Colors.grey.shade600,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            isSelected
                ? const SizedBox(
                    height: 20,
                    child: Icon(
                      Icons.check,
                      color: Color(0xFFFE5048),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
