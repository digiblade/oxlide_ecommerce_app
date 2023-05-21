import 'package:crmecommerce/View/Page/Login/p_login.dart';
import 'package:crmecommerce/View/Page/Preview/p_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "primary-font",
      ),
      onGenerateRoute: (RouteSettings settings) {
        var routes = <String, WidgetBuilder>{
          "/loginPage": (context) => const LoginPage(),

          // "/responseSuccessPage": (context) => OrderResponsePage(
          //       type: "success",
          //     ),

          // "/categoryPage": (context) =>
          //     CategoryProductPage(cat: settings.arguments as CategoryModel),
        };
        WidgetBuilder? builder = routes[settings.name!];

        return MaterialPageRoute(
            builder: (ctx) =>
                builder != null ? builder(ctx) : const NotFoundPage());
      },
      // routes: {
      //   "/productPage": (context) => const ProductPage(),
      // },
      home: const PreviewPage(),
    );
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "404 No Page Found",
        ),
      ),
    );
  }
}