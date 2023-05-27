import '../../Molecules/Search/m_searchInputFields.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class O_SearchBar extends StatefulWidget {
  const O_SearchBar({super.key});

  @override
  State<O_SearchBar> createState() => _O_SearchBarState();
}

// ignore: camel_case_types
class _O_SearchBarState extends State<O_SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.8,
          child: const M_SearchInputFields(),
        ),
      ),
    );
  }
}
