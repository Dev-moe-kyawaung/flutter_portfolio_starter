import 'package:flutter/material.dart';

class ScrollProgressGlow extends StatefulWidget {
  const ScrollProgressGlow({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  State<ScrollProgressGlow> createState() => _ScrollProgressGlowState();
}

class _ScrollProgressGlowState extends State<ScrollProgressGlow> {
  double _progress = 0;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (!widget.scrollController.hasClients) return;
    final max = widget.scrollController.position.maxScrollExtent;
    if (max <= 0) return;
    setState(() {
      _progress = (widget.scrollController.offset / max).clamp(0.0, 1.0);
    });
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: LinearProgressIndicator(
        value: _progress,
        minHeight: 3,
        backgroundColor: Colors.transparent,
        valueColor: const AlwaysStoppedAnimation(Color(0xFF00E5FF)),
      ),
    );
  }
}
