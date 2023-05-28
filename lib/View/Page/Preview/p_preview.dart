import 'package:flutter/material.dart';
import '../../../Utils/Const/colors.dart';

class PreviewPage extends StatefulWidget {
  const PreviewPage({super.key});

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, "/loginPage");
                  },
                  child: const Text(
                    "",
                    style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/loginPage");
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      color: primary,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 60,
                child: Image.asset('assets/images/preview.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 16,
              ),
              child: Text(
                "Discover New Products",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: dark,
                ),
              ),
            ),
            const Text(
              "Many new products are discovered by people simply happening upon them while being out and about in the world.",
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                color: light,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
