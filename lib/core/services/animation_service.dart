import 'package:flutter/material.dart';

class AnimationService {
  const AnimationService._();

  static Animation<double> easeInOut({
    required AnimationController controller,
  }) {
    return CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    );
  }

  static Animation<double> fadeIn({
    required AnimationController controller,
    double begin = 0.0,
    double end = 1.0,
  }) {
    return Tween<double>(begin: begin, end: end).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut),
    );
  }

  static Animation<Offset> slideFromBottom({
    required AnimationController controller,
    double beginOffsetY = 0.18,
  }) {
    return Tween<Offset>(
      begin: Offset(0, beginOffsetY),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOutCubic),
    );
  }

  static Animation<double> scaleIn({
    required AnimationController controller,
    double begin = 0.92,
    double end = 1.0,
  }) {
    return Tween<double>(begin: begin, end: end).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOutBack),
    );
  }
}
