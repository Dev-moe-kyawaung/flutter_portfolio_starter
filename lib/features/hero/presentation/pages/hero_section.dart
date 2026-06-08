import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/widgets/cyber_frame.dart';
import '../widgets/gradient_name.dart';
import '../widgets/rotating_avatar_ring.dart';
import '../widgets/typing_roles.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
    required this.onNavigate,
  });

  final Future<void> Function(int index) onNavigate;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 900;

    return CyberFrame(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 120),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: isMobile
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const RotatingAvatarRing(),
                      const SizedBox(height: 32),
                      _HeroCopy(onNavigate: onNavigate),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: _HeroCopy(onNavigate: onNavigate),
                      ),
                      const SizedBox(width: 40),
                      const Expanded(
                        flex: 5,
                        child: RotatingAvatarRing(),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

class _HeroCopy extends StatelessWidget {
  const _HeroCopy({required this.onNavigate});

  final Future<void> Function(int index) onNavigate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.heroGreeting,
          style: const TextStyle(
            color: Color(0xFF00E5FF),
            fontWeight: FontWeight.w800,
            letterSpacing: 3,
          ),
        ).animate().fadeIn(duration: 450.ms).slideY(begin: 0.2, end: 0),
        const SizedBox(height: 14),
        const GradientName(name: 'Your Name')
            .animate()
            .fadeIn(duration: 600.ms)
            .slideY(begin: 0.25, end: 0)
            .scale(begin: const Offset(0.96, 0.96), end: const Offset(1, 1)),
        const SizedBox(height: 14),
        const TypingRoles()
            .animate()
            .fadeIn(duration: 650.ms)
            .slideY(begin: 0.2, end: 0),
        const SizedBox(height: 18),
        const Text(
          'I build premium, responsive Flutter experiences with elegant motion, clean architecture, and polished interactions.',
          style: TextStyle(
            fontSize: 17,
            height: 1.7,
            color: Colors.white70,
          ),
        ).animate().fadeIn(duration: 700.ms).slideY(begin: 0.18, end: 0),
        const SizedBox(height: 28),
        Wrap(
          spacing: 14,
          runSpacing: 14,
          children: [
            ElevatedButton.icon(
              onPressed: () => onNavigate(5),
              icon: const Icon(Icons.work_rounded),
              label: const Text('View Projects'),
            ),
            OutlinedButton.icon(
              onPressed: () => onNavigate(6),
              icon: const Icon(Icons.mail_rounded),
              label: const Text('Contact Me'),
            ),
          ],
        ).animate().fadeIn(duration: 800.ms).slideY(begin: 0.15, end: 0),
      ],
    );
  }
}
