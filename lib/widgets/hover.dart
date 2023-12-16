import 'package:flutter/material.dart';

class Hover extends StatefulWidget {
  final Widget child;

  const Hover({super.key, required this.child});

  @override
  State<Hover> createState() => _HoverState();
}

class _HoverState extends State<Hover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..translate(0, -10, 0);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      // onHover: (value) => print(value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: isHovered ? hoveredTransform : Matrix4.identity(),
        curve: Curves.ease,
        child: widget.child,
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
