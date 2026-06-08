import 'package:flutter/material.dart';

class StickyNavbar extends StatefulWidget {
  const StickyNavbar({
    super.key,
    required this.labels,
    required this.onItemTap,
    required this.scrollController,
    required this.onMenuTap,
  });

  final List<String> labels;
  final Future<void> Function(int index) onItemTap;
  final ScrollController scrollController;
  final VoidCallback onMenuTap;

  @override
  State<StickyNavbar> createState() => _StickyNavbarState();
}

class _StickyNavbarState extends State<StickyNavbar> {
  bool _scrolled = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final next = widget.scrollController.offset > 20;
    if (next != _scrolled && mounted) {
      setState(() => _scrolled = next);
    }
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 900;

    return Positioned(
      top: 18,
      left: 18,
      right: 18,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          color: const Color(0xFF0F172A).withOpacity(_scrolled ? 0.94 : 0.72),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Colors.white.withOpacity(0.08)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 24,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          children: [
            const Text(
              'Portfolio',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            const Spacer(),
            if (!isMobile)
              Wrap(
                spacing: 8,
                children: List.generate(
                  widget.labels.length,
                  (i) => TextButton(
                    onPressed: () => widget.onItemTap(i),
                    child: Text(widget.labels[i]),
                  ),
                ),
              )
            else
              IconButton(
                onPressed: widget.onMenuTap,
                icon: const Icon(Icons.menu_rounded),
              ),
          ],
        ),
      ),
    );
  }
}
