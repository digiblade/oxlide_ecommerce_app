import '../../../main.dart';
import 'package:flutter/material.dart';

goToRoutesWithTransition(RouteSettings settings, WidgetBuilder? widget) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, animation, secondaryAnimation) =>
        widget != null ? widget(context) : const NotFoundPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}
