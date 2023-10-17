// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.onChanged,
      this.hintText,
      this.secret = false,
      this.inputType});
  Function(String)? onChanged;
  String? hintText;
  bool? secret = false;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: secret!,
      style: const TextStyle(
        color: Colors.black,
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
