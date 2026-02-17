import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prof26_app/presentation/pages/note_page.dart';
import 'package:prof26_uikit/prof26_uikit.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
    designSize: .new(376, 832),
    child: GetMaterialApp(
      theme: ThemeData().copyWith(
        extensions: [CustomTheme(palette: LightPalette())],
      ),
      darkTheme: ThemeData().copyWith(
        extensions: [CustomTheme(palette: DarkPalette())],
      ),
      debugShowCheckedModeBanner: false,
      home: NotePage(),
    ),
  );
}
