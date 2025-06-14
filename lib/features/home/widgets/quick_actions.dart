import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:snap_quiz/features/home/bloc/bloc/home_bloc.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => context.read<HomeBloc>().add(EndQuiz()),
            icon: Icon(LucideIcons.x, color: Colors.red, size: 35.0),
          ),
          IconButton(
            onPressed: () => context.read<HomeBloc>().add(StartQuiz()),
            icon:
                Icon(LucideIcons.rotateCcw, color: Colors.green, size: 30.0),
          ),
        ],
      ),
    );
  }
}
