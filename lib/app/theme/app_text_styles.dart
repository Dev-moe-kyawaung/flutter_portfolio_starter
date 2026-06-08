import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle heroTitle = TextStyle(
    fontSize: 54,
    fontWeight: FontWeight.w900,
    height: 1.02,
    color: AppColors.text,
    letterSpacing: -1.2,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w800,
    color: AppColors.text,
    height: 1.15,
  );

  static const TextStyle sectionSubtitle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.muted,
    height: 1.6,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: AppColors.text,
    height: 1.7,
  );

  static const TextStyle smallMuted = TextStyle(
    fontSize: 13,
    color: AppColors.muted,
    height: 1.5,
  );
}
