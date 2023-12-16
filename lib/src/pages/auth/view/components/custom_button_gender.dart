import 'package:flutter/material.dart';

class CustomButtonGender extends StatelessWidget {
  const CustomButtonGender({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint(title);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade600,
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
            const Visibility(
              visible: true,
              child: Icon(
                Icons.check,
                color: Color(0xFFFE5048),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
