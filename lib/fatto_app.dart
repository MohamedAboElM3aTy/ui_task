import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/app/utils/theme/fatto_themes.dart';
import 'package:ui_task/views/pages/bottom_nav_bar.dart';

class FattoApp extends StatelessWidget {
  const FattoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (context, _) => MaterialApp(
        title: 'Fatto App',
        debugShowCheckedModeBanner: false,
        theme: fattoTheme(),
        home: const BottomNavBar(),
      ),
    );
  }
}
