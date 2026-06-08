import 'package:flutter/material.dart';

class BackToTopButton extends StatelessWidget {
  const BackToTopButton({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 18,
      bottom: 18,
      child: FloatingActionButton(
        backgroundColor: const Color(0xFF00E5FF),
        onPressed: () {
          scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOutCubic,
          );
        },
        child: const Icon(Icons.keyboard_arrow_up, color: Colors.black),
      ),
    );
  }
}
