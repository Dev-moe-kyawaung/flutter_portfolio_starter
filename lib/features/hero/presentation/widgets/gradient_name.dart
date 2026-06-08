import 'package:flutter/material.dart';

class GradientName extends StatelessWidget {
  const GradientName({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          Color(0xFF00E5FF),
          Color(0xFF8B5CF6),
          Color(0xFF35F0FF),
        ],
      ).createShader(bounds),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 58,
          fontWeight: FontWeight.w900,
          color: Colors.white,
          height: 1.0,
          letterSpacing: -1.2,
        ),
      ),
    );
  }
}
