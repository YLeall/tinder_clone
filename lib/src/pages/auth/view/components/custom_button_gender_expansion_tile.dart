import 'package:flutter/material.dart';

class CustomButtonGenderExpansionTile extends StatelessWidget {
  const CustomButtonGenderExpansionTile({
    super.key,
    required this.subTitle,
    required this.description,
  });
  final String subTitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(
        bottom: 8,
      ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.check,
                color: Color(0xFFFE5048),
              ),
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
    );
  }
}
