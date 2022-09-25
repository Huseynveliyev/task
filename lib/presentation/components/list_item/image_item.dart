import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frazex_intern_task/presentation/theme/ui_text_style.dart';

class HomeImageItem extends StatelessWidget {
  const HomeImageItem({super.key, required this.image, required this.color});
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r), color: color),
          width: 80.r,
          height: 80.r,
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
          child: Image.asset(image),
        ),
        SizedBox(height: 2.h),
        Text(
          "Lorem",
          style: UITextStyle.h2,
        )
      ],
    );
  }
}
