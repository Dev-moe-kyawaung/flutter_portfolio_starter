import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) => MediaQuery.sizeOf(context).width < 600;
  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 600 && MediaQuery.sizeOf(context).width < 1024;
  static bool isDesktop(BuildContext context) => MediaQuery.sizeOf(context).width >= 1024;

  static double width(BuildContext context) => MediaQuery.sizeOf(context).width;
  static double height(BuildContext context) => MediaQuery.sizeOf(context).height;

  static double percentWidth(BuildContext context, double percent) =>
      MediaQuery.sizeOf(context).width * percent;

  static double percentHeight(BuildContext context, double percent) =>
      MediaQuery.sizeOf(context).height * percent;
}
