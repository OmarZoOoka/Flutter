// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {super.key, this.onChanged, this.hintText, this.secret = false});
  Function(String)? onChanged;
  String? hintText;
  bool? secret = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secret!,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      style: const TextStyle(
        color: Colors.yellow,
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
