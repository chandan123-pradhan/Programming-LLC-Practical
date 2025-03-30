import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Custom Hover Wrapper Widget
class HoverWrapper extends StatelessWidget {
  final Widget child; // Any widget inside
  final SystemMouseCursor cursor; // Cursor type

  HoverWrapper({required this.child, this.cursor = SystemMouseCursors.click});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: cursor, // Changes cursor type when hovered
      child: child,
    );
  }
}
