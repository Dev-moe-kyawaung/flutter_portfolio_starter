import 'package:flutter/material.dart';

class ScrollHelpers {
  static Future<void> scrollToKey({
    required GlobalKey key,
    Duration duration = const Duration(milliseconds: 500),
    double alignment = 0.0,
    Curve curve = Curves.easeInOut,
  }) async {
    final context = key.currentContext;
    if (context == null) return;

    await Scrollable.ensureVisible(
      context,
      duration: duration,
      alignment: alignment,
      curve: curve,
    );
  }
}
