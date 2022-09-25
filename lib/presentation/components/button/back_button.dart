import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frazex_intern_task/data/cubit/search/search_cubit.dart';
import 'package:frazex_intern_task/presentation/route/navigation.dart';
import 'package:frazex_intern_task/presentation/theme/ui_color.dart';

class LeadingBackButton extends StatelessWidget {
  const LeadingBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(
          CupertinoIcons.back,
          color: UIColor.black,
        ),
        onPressed: () {
          context.read<SearchCubit>().clear();
          Navigation.pop();
        });
  }
}
