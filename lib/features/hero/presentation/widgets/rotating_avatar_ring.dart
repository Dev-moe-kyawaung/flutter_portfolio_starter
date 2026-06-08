import 'package:flutter/material.dart';

class RotatingAvatarRing extends StatefulWidget {
  const RotatingAvatarRing({super.key});

  @override
  State<RotatingAvatarRing> createState() => _RotatingAvatarRingState();
}

class _RotatingAvatarRingState extends State<RotatingAvatarRing>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 14),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, __) {
          return Transform.rotate(
            angle: _controller.value * 6.283185307,
            child: Container(
              width: 340,
              height: 340,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const RadialGradient(
                  colors: [
                    Color(0xFF111A2E),
                    Color(0xFF070B17),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF00E5FF).withOpacity(0.16),
                    blurRadius: 30,
                    spreadRadius: 2,
                  ),
                ],
                border: Border.all(color: Colors.white.withOpacity(0.08)),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 270,
                    height: 270,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFF00E5FF).withOpacity(0.34),
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        colors: [Color(0xFF00E5FF), Color(0xFF8B5CF6)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF8B5CF6).withOpacity(0.22),
                          blurRadius: 22,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: CircleAvatar(
                        radius: 90,
                        backgroundColor: Color(0xFF070B17),
                        child: Icon(Icons.person_rounded, size: 84, color: Color(0xFF00E5FF)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
