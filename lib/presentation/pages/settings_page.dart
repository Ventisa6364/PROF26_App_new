import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prof26_uikit/prof26_uikit.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.palette.background,
      body: Padding(
        padding: .only(
          top: 15.w,
          right: 12.h,
          left: 12.h,
        ).add(MediaQuery.paddingOf(context)),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            SizedBox.square(
              dimension: 40.r,
              child: CustomIconButton(
                onPressed: () {
                  Get.back();
                },
                child: SvgPicture.asset(
                  'packages/prof26_uikit/assets/icons/keyboardBackspace.svg',
                  width: 32.r,
                  height: 32.r,
                  colorFilter: .mode(theme.palette.icon, .srcIn),
                ),
              ),
            ),
            Padding(
              padding: .only(right: 8.w),
              child: Text(
                'Settings',
                style: theme.style.nunitoBold32.copyWith(
                  color: theme.palette.text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
