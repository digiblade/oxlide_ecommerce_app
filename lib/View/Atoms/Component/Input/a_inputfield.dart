import 'package:crmecommerce/Utils/Const/colors.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final TextEditingController? controller;
  final String label;
  final bool isPassword;
  const InputField({
    super.key,
    this.controller,
    this.label = "",
    this.isPassword = false,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword,
      controller: widget.controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: light, width: 0.5),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: light, width: 0.5),
        ),
        labelText: widget.label,
        labelStyle: const TextStyle(
          color: light,
        ),
      ),
    );
  }
}
