import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.cursorColor,
    this.hintText,
    this.isDense,
    this.fontSize,
    this.fontWeight,
    this.keyboardType, this.contentPadding,
  });
  //
  final Color? cursorColor;
  final String? hintText;
  final bool? isDense;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextInputType? keyboardType;
  final bool autofocus = false;
  final Color colorBorder = const Color(0xFF828693);
  final double widthBorder = 2;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        isDense: isDense,
        contentPadding: contentPadding,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: colorBorder,
            width: widthBorder,
          ),
        ),
      ),
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      cursorColor: cursorColor,
      keyboardType: keyboardType,
      autofocus: autofocus,
    );
  }
}
