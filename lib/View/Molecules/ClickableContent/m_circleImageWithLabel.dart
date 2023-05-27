import 'package:crmecommerce/Utils/Const/colors.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class M_CircleImageWithLabel extends StatefulWidget {
  Image? image;
  String label;
  M_CircleImageWithLabel({
    super.key,
    this.image,
    this.label = "",
  });

  @override
  State<M_CircleImageWithLabel> createState() => _M_CircleImageWithLabelState();
}

// ignore: camel_case_types
class _M_CircleImageWithLabelState extends State<M_CircleImageWithLabel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: widget.image!.image,
            radius: 32,
          ),
          const SizedBox(height: 16),
          Text(
            widget.label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: dark,
            ),
          )
        ],
      ),
    );
  }
}
