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
    return const Material(
      elevation: 4,
      shadowColor: light,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      child: TextField(
        cursorColor: light,
        style: TextStyle(color: light, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          hintText: "Search \"grocery\"",
          hintStyle: TextStyle(color: light),
          prefixIcon: Icon(
            Icons.search,
            color: light,
          ),
          prefixIconColor: light,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(
              color: Colors.white,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0.5,
            ),
          ),
          labelStyle: TextStyle(
            color: light,
          ),
        ),
      ),
    );
  }
}
