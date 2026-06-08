import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  Size get size => MediaQuery.sizeOf(this);
  double get width => size.width;
  double get height => size.height;
  bool get isMobile => width < 600;
  bool get isTablet => width >= 600 && width < 1024;
  bool get isDesktop => width >= 1024;

  double wp(double percent) => width * percent;
  double hp(double percent) => height * percent;

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
}

extension StringX on String {
  String get capitalize {
    if (isEmpty) return this;
    return '${substring(0, 1).toUpperCase()}${substring(1)}';
  }
}
