import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frazex_intern_task/presentation/theme/ui_color.dart';

class UITextStyle {
  UITextStyle._();
  static TextStyle h1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 26.sp, color: UIColor.white);
  static TextStyle h2 = TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp, color: UIColor.black);
  static TextStyle h3 = TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp, color: UIColor.black);
  static TextStyle defaultText = TextStyle(fontSize: 13.sp, color: UIColor.green);
}
