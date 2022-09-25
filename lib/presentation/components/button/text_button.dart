import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frazex_intern_task/presentation/theme/ui_color.dart';
import 'package:frazex_intern_task/presentation/theme/ui_text_style.dart';

class PrimaryTextButton extends StatelessWidget {
  const PrimaryTextButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: UITextStyle.defaultText),
        SizedBox(width: 8.h),
        Icon(
          Icons.arrow_forward_ios,
          size: 12.r,
          color: UIColor.green,
        )
      ],
    );
  }
}
