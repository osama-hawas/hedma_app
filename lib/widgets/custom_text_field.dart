import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  Function(String)? onChanged;
  bool obscureState;
  TextInputType? dataInputType;
  CustomTextField({
    required this.hintText,
    required this.onChanged,
    required this.obscureState,
     this.dataInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: dataInputType,
      obscureText: obscureState,
      style: TextStyle(color: Colors.black),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
