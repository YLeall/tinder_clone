import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.pathImage,
    this.onPressed,
    required this.title,
  });
  final String pathImage;
  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      margin: const EdgeInsets.only(
        bottom: 15,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Image.asset(
              pathImage,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
