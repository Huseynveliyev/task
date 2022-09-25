import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frazex_intern_task/presentation/const/image.dart';
import 'package:frazex_intern_task/presentation/theme/ui_border.dart';
import 'package:frazex_intern_task/presentation/theme/ui_color.dart';
import 'package:frazex_intern_task/presentation/theme/ui_text_style.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: 120.w,
      padding: EdgeInsets.all(8.r),
      margin: EdgeInsets.only(right: 20.w),
      decoration: BoxDecoration(
        color: UIColor.green,
        borderRadius: UIBorder.b8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.w,
            width: 110.w,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(color: UIColor.litePink, borderRadius: UIBorder.b8),
            child: Image.asset(ImagePaths.dovsan),
          ),
          SizedBox(height: 4.h),
          Text("Lorem\nIpsum", style: UITextStyle.h2.copyWith(color: UIColor.white, fontSize: 16.sp))
        ],
      ),
    );
  }
}
