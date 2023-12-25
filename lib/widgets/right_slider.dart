import 'package:flutter/material.dart';

class RightSlider {
  static Route slideScreen(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return screen;
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        // final offsetAnimation = animation.drive(tween);
        var curve = Curves.easeInCubic;
        // var curveTween = CurveTween(curve: curve);
        var tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
