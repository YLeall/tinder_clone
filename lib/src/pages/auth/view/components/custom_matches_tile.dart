import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomMatchesTile extends StatelessWidget {
  const CustomMatchesTile({
    super.key,
    required this.isSelected,
    required this.title, this.onTap,
  });
  final bool isSelected;
  final String title;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Ink(
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? const Color(0xFFFE5048) : Colors.transparent,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.emoji_emotions,
              ),
              // const SizedBox(
              //   height: 5,
              // ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
