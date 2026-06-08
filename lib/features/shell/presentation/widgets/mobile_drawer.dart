import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({
    super.key,
    required this.labels,
    required this.onItemTap,
  });

  final List<String> labels;
  final void Function(int index) onItemTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: labels.length,
        separatorBuilder: (_, __) => const Divider(height: 24),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(labels[index]),
            trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
            onTap: () => onItemTap(index),
          );
        },
      ),
    );
  }
}
