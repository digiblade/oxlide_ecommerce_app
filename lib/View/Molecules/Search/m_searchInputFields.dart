import 'package:crmecommerce/Utils/Const/colors.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class M_SearchInputFields extends StatefulWidget {
  const M_SearchInputFields({super.key});

  @override
  State<M_SearchInputFields> createState() => _M_SearchInputFieldsState();
}

// ignore: camel_case_types
class _M_SearchInputFieldsState extends State<M_SearchInputFields> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: light, width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: light, width: 0.5),
        ),
        labelStyle: TextStyle(
          color: light,
        ),
      ),
    );
  }
}
