import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, this.onPressed});
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        gradient: onPressed == null
            ? null
            : const LinearGradient(
                colors: [
                  Color(0xFFFD2C72),
                  Color(0xFFFE5048),
                ],
              ),
        borderRadius: BorderRadius.circular(55),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0, // Remova a sombra padrão do botão
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              55.0,
            ), // Defina a borda arredondada do botão
          ),
          shadowColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: onPressed == null ? Colors.grey : Colors.white,
          ),
        ),
      ),
    );
  }
}
