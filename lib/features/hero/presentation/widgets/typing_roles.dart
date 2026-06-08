import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TypingRoles extends StatelessWidget {
  const TypingRoles({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w800,
        color: Color(0xFF00E5FF),
      ),
      child: AnimatedTextKit(
        repeatForever: true,
        pause: const Duration(milliseconds: 900),
        animatedTexts: [
          TypewriterAnimatedText('Flutter Developer'),
          TypewriterAnimatedText('UI Motion Designer'),
          TypewriterAnimatedText('Premium Portfolio Builder'),
          TypewriterAnimatedText('Clean Architecture Enthusiast'),
        ],
      ),
    );
  }
}
