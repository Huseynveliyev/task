import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frazex_intern_task/data/cubit/l10n/l10n_cubit.dart';
import 'package:frazex_intern_task/l10n/l10n.dart';
import 'package:frazex_intern_task/presentation/theme/ui_color.dart';
import 'package:frazex_intern_task/presentation/theme/ui_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          L10n.of(context).change,
          style: UITextStyle.h2.copyWith(color: UIColor.green),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: UIColor.green,
          ),
          onPressed: () =>
              context.read<L10nCubit>().changeLocale(const Locale('en')),
          child: const Text("EN"),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: UIColor.green,
          ),
          onPressed: () =>
              context.read<L10nCubit>().changeLocale(const Locale('az')),
          child: const Text("AZ"),
        ),
      ],
    ));
  }
}
