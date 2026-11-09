import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final TextInputType keyboardType;
  final IconData? icon;
  final IconData? suffixIcon;
  final bool obscureText;

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    this.keyboardType = TextInputType.text,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: const TextStyle(fontSize: 13),
      decoration: InputDecoration(
        hintText: myHint,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
        filled: true,
        fillColor: const Color(0xFFF7F7F7),
        prefixIcon: icon != null
            ? Icon(icon, color: Colors.grey[600], size: 20)
            : null,
        suffixIcon: suffixIcon != null
            ? Icon(suffixIcon, color: Colors.grey[600], size: 20)
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Color(0xFFDBDBDB), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 14,
        ),
      ),
    );
  }
}