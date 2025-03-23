import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(LucideIcons.x, color: Colors.red, size: 35.0),
          SizedBox(width: 15.0),
          Icon(LucideIcons.heart, color: Colors.black, size: 30.0),
          SizedBox(width: 15.0),
          Icon(LucideIcons.rotateCcw, color: Colors.green, size: 30.0),
        ],
      ),
    );
  }
}
