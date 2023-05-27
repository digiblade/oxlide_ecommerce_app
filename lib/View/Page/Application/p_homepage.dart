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
          child: Column(
            children: const [
              O_SearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
