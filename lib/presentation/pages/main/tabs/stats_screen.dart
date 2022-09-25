import 'package:flutter/material.dart';
import 'package:frazex_intern_task/presentation/theme/ui_color.dart';
import 'package:frazex_intern_task/presentation/theme/ui_text_style.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Stats",
        style: UITextStyle.h1.copyWith(color: UIColor.green),
      ),
    );
  }
}
