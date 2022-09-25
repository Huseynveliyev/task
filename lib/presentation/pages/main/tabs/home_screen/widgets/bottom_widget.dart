import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frazex_intern_task/l10n/l10n.dart';
import 'package:frazex_intern_task/presentation/components/button/text_button.dart';
import 'package:frazex_intern_task/presentation/components/list_item/home_item.dart';
import 'package:frazex_intern_task/presentation/theme/ui_padding.dart';
import 'package:frazex_intern_task/presentation/theme/ui_text_style.dart';

class HomeBottomWidget extends StatelessWidget {
  const HomeBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: double.maxFinite),
        Padding(
          padding: UIPadding.hPadding,
          child: Row(
            children: [
              Text(L10n.of(context).homteTitle2, style: UITextStyle.h2),
              const Spacer(),
              PrimaryTextButton(title: L10n.of(context).browse),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 20.w),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              8,
              (index) {
                return const HomeItem();
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
