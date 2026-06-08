import 'package:flutter/material.dart';

class ProfileSummaryCard extends StatelessWidget {
  const ProfileSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'I design and build modern Flutter apps with premium motion, scalable structure, and polished responsive layouts. '
      'My focus is on clean architecture, smooth UX, and production-ready code that feels elegant on mobile and web.',
      style: TextStyle(
        fontSize: 16,
        height: 1.7,
        color: Colors.white70,
      ),
    );
  }
}
