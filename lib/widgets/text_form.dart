import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      this.keyboardType,
      this.preicon,
      this.sufficon,
      this.validator,
      required this.onChanged,
      this.hint,
      this.obscureText = false});
  final String label;
  final bool obscureText;
  final String? hint;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final IconButton? preicon;
  final IconButton? sufficon;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      textAlign: TextAlign.right,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLines: 1,
      onChanged: onChanged,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(20)),
        hintText: hint,
        labelStyle: const TextStyle(color: Colors.black),
        label: Align(
            child: Text(
              label,
            ),
            alignment: Alignment.centerRight),
        suffixIcon: sufficon,
        prefixIcon: preicon,
        prefixIconColor: Colors.grey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
