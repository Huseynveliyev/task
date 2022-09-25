// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frazex_intern_task/data/cubit/l10n/l10n_cubit.dart';
import 'package:frazex_intern_task/data/cubit/search/search_cubit.dart';
import 'package:frazex_intern_task/data/locator.dart';
import 'package:frazex_intern_task/presentation/pages/main/main_page.dart';
import 'package:frazex_intern_task/presentation/route/generator.dart';
import 'package:frazex_intern_task/presentation/route/navigation.dart';
import 'package:frazex_intern_task/presentation/theme/ui_color.dart';
import 'package:frazex_intern_task/presentation/theme/ui_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  await Locator.register();
  BlocOverrides.runZoned(
    () => {
      runApp(
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => SearchCubit(),
            ),
            BlocProvider(
              create: (context) =>
                  L10nCubit()..changeLocale(const Locale('en')),
            ),
          ],
          child: const MyApp(),
        ),
      ),
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocBuilder<L10nCubit, L10nState>(
            builder: (context, state) {
              if (state is L10nLoaded) {
                return MaterialApp(
                  locale: state.locale,
                  localizationsDelegates: const [
                    AppLocalizations.delegate, // Add this line
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale('en', ''),
                    Locale('az', ''),
                  ],
                  debugShowCheckedModeBanner: false,
                  title: 'Frazex task',
                  onGenerateRoute: RouteGenerator.generateRoute,
                  navigatorKey: Navigation.navigatorKey,
                  theme: UITheme.app,
                  home: const MainPage(),
                );
              }
              return const Material(
                color: UIColor.green,
                child: Center(
                  child: CupertinoActivityIndicator(),
                ),
              );
            },
          );
        });
  }
}
