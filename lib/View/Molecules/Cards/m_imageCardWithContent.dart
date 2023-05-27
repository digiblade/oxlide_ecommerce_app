// ignore: file_names
import 'dart:math';

import 'package:flutter/material.dart';
import '../../../Utils/Const/colors.dart';

// ignore: camel_case_types
class M_ImageCardWithContent extends StatefulWidget {
  const M_ImageCardWithContent({super.key});

  @override
  State<M_ImageCardWithContent> createState() => _M_ImageCardWithContentState();
}

// ignore: camel_case_types
class _M_ImageCardWithContentState extends State<M_ImageCardWithContent> {
  var rng = Random();
  int ratting = 0;

  @override
  Widget build(BuildContext context) {
    ratting = rng.nextInt(5);
    return Column(
      children: [
        Card(
          elevation: 2.0,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: light,
                ),
                child: Image.asset(
                  'assets/images/vegetables.jpg',
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        for (int star = 0; star < 5; star++)
                          Icon(
                            Icons.star,
                            color: (() {
                              return (star < ratting) ? Colors.yellow : light;
                            }()),
                          )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Grocery & Vegetables",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's"
                          .substring(0, 50),
                      style: const TextStyle(
                        color: light,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      "₹ 120 /-",
                      style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
