import 'package:crmecommerce/View/Molecules/Cards/m_imageCardWithContent.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class O_ProductSection extends StatefulWidget {
  String title;
  O_ProductSection({
    super.key,
    this.title = "",
  });

  @override
  State<O_ProductSection> createState() => _O_ProductSectionState();
}

// ignore: camel_case_types
class _O_ProductSectionState extends State<O_ProductSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.height /
                MediaQuery.of(context).size.width,
          ),
          shrinkWrap: true,
          primary: false,
          itemBuilder: ((context, index) => const M_ImageCardWithContent()),
        ),
      ],
    );
  }
}
