import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frazex_intern_task/data/model/user_model.dart';
import 'package:frazex_intern_task/presentation/theme/ui_border.dart';
import 'package:frazex_intern_task/presentation/theme/ui_color.dart';
import 'package:frazex_intern_task/presentation/theme/ui_text_style.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key, required this.userModel});
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      margin: EdgeInsets.only(bottom: 20.w),
      decoration: BoxDecoration(
        color: UIColor.white,
        borderRadius: UIBorder.b8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: UIBorder.b8,
            child: CachedNetworkImage(
              width: 50.w,
              height: 50.w,
              imageUrl: userModel.avatarUrl,
              fit: BoxFit.cover,
              placeholder: (context, url) => const CupertinoActivityIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userModel.login, style: UITextStyle.h2),
              SizedBox(height: 4.h),
              Text(userModel.id.toString(), style: UITextStyle.defaultText),
            ],
          )
        ],
      ),
    );
  }
}
