import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/bottom_widget.dart';
import 'widgets/top_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeTopWidget(),
        SizedBox(height: 40.h),
        const HomeBottomWidget(),
        
      ],
    );
  }
}
