import 'package:flutter/material.dart';

class CyberFrame extends StatelessWidget {
  const CyberFrame({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(0),
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF070B17), Color(0xFF0C1326), Color(0xFF070B17)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}
