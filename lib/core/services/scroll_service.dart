import 'package:flutter/material.dart';

class ScrollService {
  const ScrollService._();

  static Future<void> scrollToKey(
    GlobalKey key, {
    Duration duration = const Duration(milliseconds: 550),
    Curve curve = Curves.easeInOutCubic,
    double alignment = 0.05,
  }) async {
    final context = key.currentContext;
    if (context == null) return;

    await Scrollable.ensureVisible(
      context,
      duration: duration,
      curve: curve,
      alignment: alignment,
    );
  }
}
