import 'package:crmecommerce/View/Molecules/ClickableContent/m_circleImageWithLabel.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class O_CategoryGrid extends StatefulWidget {
  const O_CategoryGrid({super.key});

  @override
  State<O_CategoryGrid> createState() => _O_CategoryGridState();
}

// ignore: camel_case_types
class _O_CategoryGridState extends State<O_CategoryGrid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Shop By Category",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              M_CircleImageWithLabel(
                image: Image.asset(
                  'assets/images/clothes.jpg',
                ),
                label: "Clothes",
              ),
              M_CircleImageWithLabel(
                image: Image.asset(
                  'assets/images/electronics.jpg',
                ),
                label: "Electronics",
              ),
              M_CircleImageWithLabel(
                image: Image.asset(
                  'assets/images/grocery high.jpg',
                ),
                label: "Grocery",
              ),
              M_CircleImageWithLabel(
                image: Image.asset(
                  'assets/images/laptop.jpg',
                ),
                label: "Laptop",
              ),
              M_CircleImageWithLabel(
                image: Image.asset(
                  'assets/images/vegetables.jpg',
                ),
                label: "Vegetable",
              ),
            ],
          ),
        )
      ],
    );
  }
}
