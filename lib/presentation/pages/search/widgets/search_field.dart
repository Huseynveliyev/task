import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frazex_intern_task/data/cubit/search/search_cubit.dart';
import 'package:frazex_intern_task/l10n/l10n.dart';
import 'package:frazex_intern_task/presentation/theme/ui_border.dart';
import 'package:frazex_intern_task/presentation/theme/ui_color.dart';
import 'package:frazex_intern_task/presentation/theme/ui_padding.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UIPadding.hPadding,
      child: Container(
        width: double.maxFinite,
        height: 50.h,
        decoration: BoxDecoration(color: Colors.white, borderRadius: UIBorder.b8),
        child: TextField(
          onSubmitted: ((value) {
            context.read<SearchCubit>().search(value);
          }),
          decoration: InputDecoration(
            hintText: L10n.of(context).search,
            hintStyle: TextStyle(color: UIColor.black.withOpacity(.5)),
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search, color: UIColor.green),
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 11.h),
          ),
        ),
      ),
    );
  }
}
