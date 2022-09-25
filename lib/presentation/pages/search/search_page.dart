import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frazex_intern_task/l10n/l10n.dart';
import 'package:frazex_intern_task/presentation/components/button/back_button.dart';
import 'package:frazex_intern_task/presentation/pages/search/search_body.dart';
import 'package:frazex_intern_task/presentation/theme/ui_text_style.dart';

import 'widgets/search_field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(L10n.of(context).searchTitle, style: UITextStyle.h2),
          leading: const LeadingBackButton(),
          bottom: PreferredSize(preferredSize: Size(double.maxFinite, 60.h), child: const SearchField()),
        ),
        body: const SearchBody(),
      ),
    );
  }
}
