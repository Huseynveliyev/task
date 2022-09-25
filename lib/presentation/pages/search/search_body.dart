import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frazex_intern_task/data/cubit/search/search_cubit.dart';
import 'package:frazex_intern_task/l10n/l10n.dart';
import 'package:frazex_intern_task/presentation/components/list_item/search_item.dart';
import 'package:frazex_intern_task/presentation/theme/ui_padding.dart';
import 'package:frazex_intern_task/presentation/theme/ui_text_style.dart';


class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UIPadding.hPadding,
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if (state is SearchLoading) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (state is SearchError) {
            return Center(child: Text(state.message));
          } else if (state is SearchLoaded) {
            if (state.searchModel.items.isEmpty) {
              return Center(
                  child:
                      Text(L10n.of(context).notFound, style: UITextStyle.h2));
            } else {
              return ListView.builder(
                  itemCount: state.searchModel.totalCount > 30
                      ? 30
                      : state.searchModel.totalCount,
                  padding: EdgeInsets.only(top: 20.h),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, i) {
                    return SearchItem(userModel: state.searchModel.items[i]);
                  });
            }
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
