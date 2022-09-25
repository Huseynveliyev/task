import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frazex_intern_task/l10n/l10n.dart';
import 'package:frazex_intern_task/presentation/components/list_item/image_item.dart';
import 'package:frazex_intern_task/presentation/const/image.dart';
import 'package:frazex_intern_task/presentation/route/navigation.dart';
import 'package:frazex_intern_task/presentation/route/route_name.dart';
import 'package:frazex_intern_task/presentation/theme/ui_border.dart';
import 'package:frazex_intern_task/presentation/theme/ui_color.dart';
import 'package:frazex_intern_task/presentation/theme/ui_padding.dart';
import 'package:frazex_intern_task/presentation/theme/ui_text_style.dart';

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      UIColor.green,
      UIColor.litePink,
      UIColor.darkBlue,
    ];
    List<String> images = [
      ImagePaths.dovsan,
      ImagePaths.yarpag,
      ImagePaths.donuz,
    ];
    return SizedBox(
      height: 345.h - kToolbarHeight,
      child: Stack(
        children: [
          Container(
            height: 295.h - kToolbarHeight,
            width: double.maxFinite,
            color: UIColor.green,
          ),
          newTitle(context),
          newSearch(context),
          newItems(colors, images),
        ],
      ),
    );
  }

  Align newItems(List<Color> colors, List<String> images) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          color: UIColor.white,
          borderRadius: UIBorder.b8,
        ),
        margin: UIPadding.hPadding,
        padding: UIPadding.dPadding.add(EdgeInsets.only(top: 8.h)),
        width: double.maxFinite,
        height: 155.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            3,
            (index) {
              return HomeImageItem(color: colors[index], image: images[index]);
            },
          ).toList(),
        ),
      ),
    );
  }

  GestureDetector newSearch(context) {
    return GestureDetector(
      onTap: () => Navigation.push(RouteName.search),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 50.h,
          margin: UIPadding.hPadding.add(EdgeInsets.only(top: 50.h)),
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: UIBorder.b8,
            color: UIColor.white,
          ),
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: UIColor.green,
              ),
              SizedBox(width: 8.w),
              Text(
                L10n.of(context).search,
                style: UITextStyle.defaultText.copyWith(color: UIColor.black.withOpacity(.5)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding newTitle(context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Text(L10n.of(context).homeTitle, style: UITextStyle.h1),
    );
  }
}
