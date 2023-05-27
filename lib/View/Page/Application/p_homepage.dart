import 'package:crmecommerce/View/Organisms/CategoryGrid/o_categoryGrid.dart';
import 'package:crmecommerce/View/Organisms/Sections/Products/o_productSection.dart';

import '../../../Utils/Const/colors.dart';
import '../../Organisms/Search/o_search.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class P_HomePage extends StatefulWidget {
  const P_HomePage({super.key});

  @override
  State<P_HomePage> createState() => _P_HomePageState();
}

// ignore: camel_case_types
class _P_HomePageState extends State<P_HomePage> {
  List<Widget> elements = [
    const O_SearchBar(),
    const O_CategoryGrid(),
    O_ProductSection(
      title: "New Arrivals",
    ),
    O_ProductSection(
      title: "Hot Deals",
    ),
    O_ProductSection(
      title: "Trendy Offers",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Text",
              style: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Logo",
              style: TextStyle(
                color: dark,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: dark),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu_open,
                color: primary,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: Image.asset("assets/images/user.jpg").image,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
            child: Column(
              children: elements
                  .map(
                    (component) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: component,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
